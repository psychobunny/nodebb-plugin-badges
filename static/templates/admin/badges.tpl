<h1>Badges</h1>
<hr />

<form id="badges-form">
	<p>
		Create Rules to award badges.
	</p><br />
	<div id="" class="alert alert-info">
		<div class="row">
			<div class="col-xs-6">
				Badge to award:
				
				<select id="badges-list">
					<!-- BEGIN badges -->
					<option value="{badges.name}" data-imagesrc="../../plugins/nodebb-plugin-badges/static/badges/{badges.name}"
				data-description="{badges.name}">{badges.name}</option>
					<!-- END badges -->
				</select><br />
				Name of badge:
				<input type="text" name="hash" value="" placeholder="Badge Name" class="form-control" /><br />
				User Hash key (ex. profileviews, reputation, postcount):
				<input type="text" name="hash" value="" placeholder="reputation" class="form-control" /><br />
				Value the user has to obtain:
				<input type="text" name="hash" value="" placeholder="99" class="form-control" /><br />
				Amount of times the user can obtain this badge:
				<input type="text" name="hash" value="" placeholder="1" class="form-control" />
			</div>
			<div class="col-xs-6">
				<div class="btn-group pull-right">
					<button type="button" id="badges-duplicate" class="btn btn-info"><i class="fa fa-times-circle"></i> Duplicate Rule</button>
					<button type="button" id="badges-delete" class="btn btn-danger"><i class="fa fa-times-circle"></i> Delete Rule</button>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6 col-sm-12">
			<button type="button" id="badges-save" class="btn btn-info btn-lg btn-block"><i class="fa fa-plus-circle"></i> New Rule</button>
		</div>
		<div class="col-md-6 col-sm-12">
			<button type="button" id="badges-save" class="btn btn-success btn-lg btn-block"><i class="fa fa-save"></i> Save</button>
		</div>
	</div>
</form>

<script>
	require(['settings'], function(Settings) {
		Settings.load('badges', $('#badges-form'));

		$('#badges-save').on('click', function(ev) {
			Settings.save($('#badges-form'));

			ev.preventDefault();
			return false;
		});
	});

	 $('#badges-list').ddslick();
</script>