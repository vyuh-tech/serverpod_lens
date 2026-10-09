import 'package:flutter/material.dart';

import '../schema/schema_context.dart';

/// Names and membership live in the view, separate from imported schema data.
class SchemaGroupEditor extends StatefulWidget {
  const SchemaGroupEditor({
    super.key,
    required this.contextGraph,
    required this.id,
    this.group,
    this.initialMembers = const {},
  });
  final SchemaContext contextGraph;
  final String id;
  final SchemaGroup? group;
  final Set<String> initialMembers;

  @override
  State<SchemaGroupEditor> createState() => _SchemaGroupEditorState();
}

class _SchemaGroupEditorState extends State<SchemaGroupEditor> {
  late final _name = TextEditingController(text: widget.group?.name);
  late final _note = TextEditingController(text: widget.group?.note);
  late final Set<String> _members = {
    ...widget.group?.members ?? widget.initialMembers,
  };
  late int _color = widget.group?.color ?? _colors.first;
  String _query = '';
  String? _error;
  static const _colors = [
    0xff2563eb,
    0xff047857,
    0xff7c3aed,
    0xffb45309,
    0xffbe185d,
  ];
  static const _colorNames = ['Blue', 'Green', 'Purple', 'Amber', 'Rose'];

  @override
  void dispose() {
    _name.dispose();
    _note.dispose();
    super.dispose();
  }

  void _save() {
    if (_name.text.trim().isEmpty || _members.isEmpty) {
      setState(
        () => _error = 'Give the group a name and choose at least one table.',
      );
      return;
    }
    Navigator.of(context).pop(
      SchemaGroup(
        id: widget.id,
        name: _name.text.trim(),
        members: _members,
        note: _note.text.trim(),
        color: _color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final tables =
        widget.contextGraph.tables.values
            .where((t) => t.name.toLowerCase().contains(_query.toLowerCase()))
            .toList()
          ..sort((a, b) => a.name.compareTo(b.name));
    return AlertDialog(
      title: Text(
        widget.group == null ? 'Create table group' : 'Edit table group',
      ),
      content: SizedBox(
        width: 520,
        height: 500,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                key: const ValueKey('group-name'),
                controller: _name,
                autofocus: true,
                decoration: const InputDecoration(
                  labelText: 'Group name',
                  hintText: 'For example, Authentication',
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: _note,
                decoration: const InputDecoration(
                  labelText: 'Description (optional)',
                ),
                maxLines: 2,
              ),
              const SizedBox(height: 12),
              Wrap(
                spacing: 8,
                children: [
                  for (var i = 0; i < _colors.length; i++)
                    ChoiceChip(
                      label: Text(_colorNames[i]),
                      avatar: Icon(
                        Icons.circle,
                        color: Color(_colors[i]),
                        size: 12,
                      ),
                      selected: _color == _colors[i],
                      onSelected: (_) => setState(() => _color = _colors[i]),
                    ),
                ],
              ),
              const SizedBox(height: 12),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Find tables to include',
                  prefixIcon: Icon(Icons.search),
                ),
                onChanged: (v) => setState(() => _query = v.trim()),
              ),
              const SizedBox(height: 8),
              Text(
                '${_members.length} tables selected · groups last for this session',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              if (_error != null)
                Text(
                  _error!,
                  style: TextStyle(color: Theme.of(context).colorScheme.error),
                ),
              SizedBox(
                height: 260,
                child: tables.isEmpty
                    ? const Center(child: Text('No matching tables'))
                    : ListView.builder(
                        itemCount: tables.length,
                        itemBuilder: (_, i) => CheckboxListTile(
                          dense: true,
                          value: _members.contains(tables[i].name),
                          title: Text(
                            tables[i].name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          controlAffinity: ListTileControlAffinity.leading,
                          onChanged: (value) => setState(() {
                            if (value == true) {
                              _members.add(tables[i].name);
                            } else {
                              _members.remove(tables[i].name);
                            }
                          }),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: _save,
          child: Text(widget.group == null ? 'Create group' : 'Save group'),
        ),
      ],
    );
  }
}
