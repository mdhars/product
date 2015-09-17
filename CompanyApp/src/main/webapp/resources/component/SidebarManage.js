var SidebarManage = React.createClass({
	getInitialState : function(){
		return({path:""});
	},
	render : function () {
		var menuItems = [
				        {link:"newcust", label:"Customer" },
				        {link:"newitem", label:"Item"},
				        {link:"contacts", label:"Contact"},
				        {link:"more", label:"More"}
				        ];
		var ribbon = "Manage";
//		var currentPath = "newcust";
		return (
				<Sidebar activ={this.props.path}  ribbon={ribbon} items={menuItems} />
		);
	}
});