initialization
initializePresenters

	menu := self newMenuBar
		        addGroup: [ :group |
			        group addItem: [ :item |
					        item
						        name: '';
						        description: 'Atrás';
						        icon: (self iconNamed: #refresh);
						        action: [ self inform: 'Atrás' ] ] ];
		        addGroup: [ :group |
			        group addItem: [ :item |
				        item
					        name: '';
					        description: 'Undo';
					        icon: (self iconNamed: #smallUndo);
					        action: [ self inform: 'Undo' ] ].
			        group addItem: [ :item |
				        item
					        name: '';
					        description: 'Redo';
					        icon: (self iconNamed: #smallRedo);
					        action: [ self inform: 'Redo' ] ] ].

	menu addKeybindingsTo: self.
	text := self newText.
	login := InterfazLogin new.
	self focusOrder add: text yourself