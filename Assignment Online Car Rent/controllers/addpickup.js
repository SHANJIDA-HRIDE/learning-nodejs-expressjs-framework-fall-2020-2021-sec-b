var express = require('express');
var db = require('./../models/db.js');
var userModel = require('./../models/admin');
var booking = require('./../models/booking');

var router = express.Router();

router.get('/pickupinfo/:id', function(req, res){

	userModel.getByIdpickup(req.params.id, function(results){

		res.render('pickup/pickupinfo', {pickup: results});		
	});

});

router.get('/pickupinfomember/:id', function(req, res){

	userModel.getByIdpickup(req.params.id, function(results){

		res.render('pickup/pickupinfomember', {pickup: results});		
	});

});


router.get('/addpickup/addpickup/updatepickup/:id', function(req, res){

	userModel.getupdatepickup(req.params.id, function(results){
		res.render('pickup/updatepickup', {pickup: results});		
	});

});

router.post('/addpickup/addpickup/updatepickup/:id', function(req, res){
	
	var pickup = {
		pickupname: req.body.pickupname,
		pickupcost: req.body.pickupname,
		
		avlcar: req.body.avlcar,
		
		id: req.params.id
	};
	userModel.updatepickup(pickup, function(status){
		console.log(status);
		if(status){
			res.redirect('/admin/pickup');
		}else{
			res.redirect('/adminhome');
		}
	});
});

router.get('/addpickup/addpickup/deletepickup/:id', function(req, res){

	userModel.pickupdelete(req.params.id, function(status){
		if(status){
			res.redirect('/admin/pickup');
		}else{
			res.redirect('/adminhome');
		}
	});
});

router.get('/pickup', function(req, res){

   res.render('pickup/pickup');
});

router.post('/pickup', (req, res)=>{

	var pickup = {
		pickupname: 	    req.body.pickupname,
		pickupcost: 	    req.body.pickupname,
		
		avlcar	:        	req.body.avlcar
	};

	userModel.insertpickup(pickup, function(status){
		if(status){
			res.redirect('/admin/pickup');
		}else{
			res.redirect('/adminhome');
		}
	});
});

router.get('/addpickup/addpickup/bookpickup/:id', function(req, res){

	booking.getByIdpickup(req.params.id, function(status){
		if(status)
        {
        	 res.render('booking/book');	
            
        }
        else{
        	res.redirect('/adminhome');
        }
		   		
	});

});

router.post('/addpickup/addpickup/bookpickup/:id', function(req, res){
	
	var bookpick = {


		address: req.body.location,
		date: req.body.time,
		
		
		
		id: req.params.id
	};
	booking.insertpickup(bookpick, function(status){
		console.log(status);
		if(status){
			res.redirect('/member/pickup');
		}else{
			res.redirect('/memberhome');
		}
	});
});




module.exports = router;