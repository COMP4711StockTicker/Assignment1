<div id="players" class="tab-pane fade in fade">
    <div class = "row">
        <div class = "col-md-10 col-md-offset-1">
            <div class = "table-responsive">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>Player</th>
                        <th>Equity</th>
                        <th>Cash</th>
                    </tr>
                    </thead>
                    <tbody>
                        {player_list}
                        <tr>
                            <td><a href="/portfolio/1">{Player}</a></td>
                            <td>{Equity}</td>
                            <td>{Cash}</td>
                        </tr>
                        {/player_list}
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>