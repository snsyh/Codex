// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.turbolinks
//= require turbolinks
//= require_tree .
//= require modernizr

$(document).ready(function() {
	$(".addcart").click(function() {
		var shop_item = $(this).attr("id").split("_");
		$.ajax({
			url : "/demos/addcart",
			type : "POST",
			dataType : "html",
			data : {
				"shop_code" : shop_item[0],
				"item_code" : shop_item[1]
			},
			cache : false,
			success : function(data, textStatus) {
				$('#testes').text(data);
			},
			error : function(xhr, textStatus, errorThrown) {
				// エラー処理
			}
		});
	});

	$(".removecart").click(function() {
		var shop_item = $(this).attr("id").split("_");
		$.ajax({
			url : "/demos/removecart",
			type : "POST",
			dataType : "html",
			data : {
				"shop_code" : shop_item[0],
				"item_code" : shop_item[1]
			},
			cache : false,
			success : function(data, textStatus) {
				$('#testes').text(data);
			},
			error : function(xhr, textStatus, errorThrown) {
				// エラー処理
			}
		});
	});

	$(".clearcart").click(function() {
		$.ajax({
			url : "/demos/clearcart",
			type : "POST",
			dataType : "html",
			cache : false,
			success : function(data, textStatus) {
				$('#testes').text(data);
			},
			error : function(xhr, textStatus, errorThrown) {
				// エラー処理
			}
		});
	});

	$.ajax({
		url : "/demos/ajax",
		dataType : "html",
		cache : false,
		success : function(data, textStatus) {
			$('#testes').text(data);
		},
		error : function(xhr, textStatus, errorThrown) {
			// エラー処理
		}
	});
});
