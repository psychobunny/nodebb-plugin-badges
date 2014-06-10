"use strict";

var	meta = require('../../src/meta'),
	user = require('../../src/user'),
	websockets = require('../../src/socket.io/index.js'),
	templates = module.parent.require('../public/src/templates'),
	utils = module.parent.require('../public/src/utils'),

	path = require('path');
	
var badges = {};

function renderAdmin(req, res, next) {
	var pathToBadges = path.join(__dirname, 'static/badges');

	utils.walk(pathToBadges, function(err, rawIcons) {
		var icons = [];

		rawIcons.forEach(function(icon, i) {
			icons.push({
				name: icon.replace(pathToBadges, '')
			});
		});

		res.render('admin/badges', {badges: icons});
	});
}

badges.init = function(app, middleware, controllers) {
	app.get('/admin/badges', middleware.admin.buildHeader, renderAdmin);
	app.get('/api/admin/badges', renderAdmin);	
};

badges.userModified = function(field, value, type) {
	console.log(field, value, type);
};

badges.addAdminNavigation = function(nav, callback) {
	nav.plugins.push({
		"route": "/badges",
		"icon": "fa fa-certificate",
		"name": "Badges"
	});

	callback(null, nav);
};

badges.addAdminScripts = function(scripts, callback) {
	scripts = scripts.concat([
		'/plugins/nodebb-plugin-badges/static/vendor/ddslick.js'
	]);
	callback(null, scripts);
};

module.exports = badges;