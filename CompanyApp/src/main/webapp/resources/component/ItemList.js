var ItemList = React.createClass({
	getInitialState : function(){
		return({items:[{dimension:'',ply:'',gsm:'',price:''}],delCallback:''});
	},
	 componentDidMount: function() {
		 $(document).ready(function(){
			var editcomp = $('[data-toggle="confirmation-singleton"]');
			editcomp.confirmation({singleton:true});
		 });
	 },
	render : function(){
		return (
				<table className="table table-hover ">
				<thead>
					<tr>
						<th>Dimension</th>
						<th>Ply</th>
						<th>GSM</th>
						<th>Price</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					{this.props.items.map(this.createRow)};
				</tbody>
			</table>	
		);
	},
	
	createRow : function(item){
		return(
				<tr ke={item.itemId}>
					<td>{item.dimension}</td>
					<td>{item.ply} </td>
					<td>{item.gsm}</td>
					<td>{item.price}</td>
					<td>
						<button type="button" className="btn btn-link editItem" data-dimension ={item.dimension}  data-ply = {item.ply}
							data-gsm={item.gsm} data-price={item.price} data-itemid={item.itemId} data-toggle="modal" data-target="#myModal">Edit</button>
						<button type="button"  className="btn btn-link" data-itemid={item.itemId} data-toggle="confirmation-singleton" data-placement="left">Delete</button>
					</td>
				</tr>
		);
	}
})