initialization
addItemTo: aGroup

	aGroup addItem: [ :item |
		item
			name: 'Dynamic';
			icon: (self iconNamed: #delete);
			action: [
				aGroup menuItems remove: item.
				self needRebuild: false.
				self build ] ].
	self needRebuild: false.
	self build