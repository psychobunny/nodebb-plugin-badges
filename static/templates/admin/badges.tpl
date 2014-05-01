<h1>Badges</h1>
<hr />

<form>
	<p>
		Adjust how much cash a poster earns when they create a new post. 
	</p><br />
	<div class="alert alert-info">
		<p>
			<label for="Setting 1">Payment earned per character</label>
			<input type="text" data-field="cash:pay_per_character" title="Payment earned per character" class="form-control" placeholder="0.25"><br />
			<label for="Setting 2">Name of currency</label>
			<input type="text" data-field="cash:currency_name" title="Name of currency" class="form-control" placeholder="gp">
		</p>
	</div>
</form>

<button class="btn btn-lg btn-primary" id="save">Save</button>

<script>
	require(['forum/admin/settings'], function(Settings) {
		Settings.prepare();
	});
</script>