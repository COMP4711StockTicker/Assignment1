
<div id="trading" class="tab-pane fade in active">
    <div class = "row">
        <div class = "col-md-5">
            <h2>Recent Activity</h2>
            <div class = "table-responsive">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>Stock</th>
                        <th>Transaction</th>
                        <th>Quantity</th>
                        <th>Date</th>
                    </tr>
                    </thead>
                    <tbody>

                    {transactions_list}
                    <tr>
                        <td>{Stock}</td>
                        <td>{Trans}</td>
                        <td>{Quantity}</td>
                        <td>{DateTime}</td>
                    </tr>
                    {/transactions_list}
                    </tbody>
                </table>
            </div>
        </div>

        <div id="movement" class="tab-pane fade in active">
            <div class = "row">
                <div class = "col-md-5 col-md-offset-1">
                    <h2>Stock Index</h2>
                    <div class = "table-responsive">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th>Stock</th>
                                <th>Action</th>
                                <th>Value</th>
                                <th>Date</th>
                            </tr>
                            </thead>
                            <tbody>
                            {movements_list}
                            <tr>
                                <td>{Code}</td>
                                <td>{Action}</td>
                                <td>{Amount}</td>
                                <td>{Datetime}</td>
                            </tr>
                            {/movements_list}
                            </tbody>
                        </table>
                    </div>
                </div>