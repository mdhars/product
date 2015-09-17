var Sidebar = React.createClass({
	
	getInitialState : function () {
		return ({actv:'', items : [{link:'',label:''}]})
	},
	render : function(){

		return ( <div id="sidebar-wrapper">
		<ul className="sidebar-nav"> 
		<li className="sidebar-brand"><a href="#"> {this.props.ribbon}</a></li>
		
		{this.props.items.map(this.createListItem)};
		</ul>
		</div>
		);
	},
	
	createListItem : function(item){
		return (<li key={item.label} ><a className={this.props.activ===item.link?'active':''} href={item.link}>{item.label}</a></li>);
	}
	
});

