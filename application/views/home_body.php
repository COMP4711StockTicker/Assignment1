<ul class="nav nav-tabs">
    <li class="active">
        <a data-toggle="tab" href="#stocks">Stocks</a>
    </li>
    <li>
        <a data-toggle="tab" href="#players">Players</a>
    </li>
</ul>

<div class="tab-content">
    <?php $this->load->view('home/stocks'); ?>
    <?php $this->load->view('home/players'); ?>
</div>