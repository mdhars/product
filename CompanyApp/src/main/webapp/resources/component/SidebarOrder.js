var SidebarOrder = React.createClass({
	getInitialState : function(){
		return({path:""});
	},
	render : function () {
		var menuItems = [
				        {link:"/order/new", label:"New Order"},
				        {link:"/order/open", label:"Open Orders"},
				        {link:"/order/search", label:"Search"},
				        {link:"/order/more?p=order", label:"More"}
				        ]
		var title = "Order";
		return (
				<Sidebar activ={this.props.path} ribbon = {title} items={menuItems}/>
		);
	}
});