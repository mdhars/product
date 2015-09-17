var NewItemDialog = React.createClass({
	render : function(){
		return (
				<div id="myModal" className="modal fade" role="dialog">
		

       <div className="modal-content">
      <div className="modal-header">
        <button type="button" className="close" data-dismiss="modal">&times;</button>
        <h4 classNameName="modal-title">Edit Item</h4>
      </div>
      <div className="modal-body">
        <form action="saveitem" className="form-horizontal" method="POST">
        	<div className="form-group row">
			<div className="col-xs-4 ">
				<label forHtml="dimension">Dimension</label>
				<input id="dimension" name="dimension" className="form-control" type="text" placeholder="L x B x H"/>
			</div>
			</div>
        	<div className="form-group row">
			<div className="col-xs-4 ">
				<label forHtml="ply">Ply</label>
				<select className="form-control" id="ply" name="ply">
    				<option value="3">3</option>
    				<option value="5">5</option>
    				<option value="7">7</option>
    				<option value="9">9</option>
    				<option value="11">11</option>
				</select>
			</div>
			</div>
			<div className="form-group row">
			<div className="col-xs-4 ">
				<label forHtml="gsm">GSM</label>
				<select className="form-control" id="gsm" name="gsm">
    				<option value="100">100</option>
    				<option value="120">120</option>
    				<option value="150">150</option>
    				<option value="180">180</option>
				</select>
			</div>
			</div>
			<div className="form-group row">
			<div className="col-xs-4">
				<div className="input-group">
					<label className="sr-only" forHtml="price">Price </label>
      				<div className="input-group-addon">Rs.</div>
      				<input type="text" className="form-control" name="price" id="price" placeholder="Amount"/>
      				<div className="input-group-addon">.00</div>
    			</div>
			</div>
			</div>
      		<div className="modal-footer">
      			<button type="submit" className="btn btn-primary">Save</button>
        		<button type="button" className="btn btn-link" data-dismiss="modal">Close</button>
      		</div>
      		<div>
      			<input type="hidden" name="companyId" id="companyId"/>
      			<input type="hidden" name="itemId" id="itemId"/>
      		</div>
        </form>
      </div>
    </div>

  </div>

);
	}
});