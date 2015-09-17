 
	 
var NameTypeahead  = React.createClass({
	getInitialState : function(){
		return({compId:"",compLabel:"",path:""});
	},
	 componentDidMount: function() {
		 var searcher = new Bloodhound({
				datumTokenizer: Bloodhound.tokenizers.obj.whitespace('name'),
				queryTokenizer: Bloodhound.tokenizers.whitespace,
				//remote: 'findCustomer?query=%QUERY', 
				remote: {
	    			url: this.props.path+'?query=%QUERY',
	   				wildcard: '%QUERY'
				}
			});
			searcher.initialize();
			$('#autoComplete > input').typeahead({
				 hint : true,
				 highlight : true,
				 minLength : 2
			 },
			 {
				  name: 'customer',
				  displayKey: 'companyName',
				  source: searcher
				});
	 },
	render : function(){
		return (
			<div className='col-xs-6' id='autoComplete'>
				<label htmlFor={this.props.compId}>{this.props.compLabel}</label>
				<input className='form-control' type='text' name={this.props.compId} id={this.props.compId}/>
			</div>
			);
	}
});

$(document).ready(function(){
	
	
}
)