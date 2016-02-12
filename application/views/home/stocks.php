<div id="stocks" class="tab-pane fade in active">
    <div class = "row">
        <div class = "col-md-10 col-md-offset-1">
            <div class = "table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Code</th>
                            <th>Name</th>
                            <th>Category</th>
                            <th>Value</th>
                        </tr>
                    </thead>
                    <tbody>
                        {stock_list}
                        <tr>
                            <td><a href="/stock/{Code}">{Code}</a></td>
                            <td>{Name}</td>
                            <td>{Category}</td>
                            <td>{Value}</td>
                        </tr>
                        {/stock_list}
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>