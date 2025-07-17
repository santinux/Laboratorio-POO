layout
defaultLayout

	^ SpBoxLayout newTopToBottom
		  add: menu expand: false;
		  add: text;
		  add: login yourself