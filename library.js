"use strict";

var	meta = require('../../src/meta'),
	user = require('../../src/user'),
	websockets = require('../../src/socket.io/index.js'),
	templates = module.parent.require('../public/src/templates');
	
var badges = {};

function renderAdmin(req, res, next) {
	res.render('admin/badges', {});
}

badges.init = function(app, middleware, controllers) {
	app.get('/admin/badges', middleware.admin.buildHeader, renderAdmin);
	app.get('/api/admin/badges', renderAdmin);	
};

badges.userModified = function(field, value, type) {
	console.log(field, value, type);
};

module.exports = badges;