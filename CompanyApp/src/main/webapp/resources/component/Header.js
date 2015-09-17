var Header = React.createClass({
	getInitialState : function(){
		return({tabs:"",current:""});
	},
	render : function(){
		return(
				<nav className="navbar navbar-inverse">
				<div className="container-fluid">
				<div className="navbar-header">
				<a className="navbar-brand" href="#">
				<img alt="Brand" src='/resources/img/brand.png'></img></a>
				</div>
				<div className="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul className="nav navbar-nav">
				{this.props.tabs.map(this.createTab)};
				</ul>
				</div>
				</div>
				</nav>
		);
	},
	createTab : function(tab){
		return (<li className={this.props.current===tab.tabName?"active":""}><a href={tab.path}>{tab.tabName}</a></li>);
	}
});


function renderHeader(headerdiv,tab){
	var tabs =[{tabName:'Order',path:'/order/open'},
				{tabName:"Report",path:"/report/monthly"},
				{tabName:"Pricing",path:"/pricing"},
				{tabName:"Inventory",path:"#"},
				{tabName:"Manage",path:"/manage/newitem"}];
	/*for(i in tabs){
		if(tabs[i].tab === tab){
			
		}
	}*/
	var spantab;
	React.render(<Header tabs={tabs} current={tab}/>, document.getElementById(headerdiv));
}