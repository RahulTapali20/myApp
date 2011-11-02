class User < ActiveRecord::Base

 email_reg = /^[a-zA-Z][a-zA-Z0-9\.]+@[a-zA-Z]+[a-zA-Z\.]+$/
 has_attached_file :profilepic  

 validates :fname, :presence => { :message => ':: First name can\'t be blank' }, :length => { :maximum => 25 }
 validates :lname, :presence => { :message => ':: Last name can\'t be blank' }, :length => {:maximum => 25 }
 validates :email, :presence => { :message => ':: Email Id can\'t be blank' }, :format => {:with => email_reg }
 validates :mobileNo, :format => { :with => /^(([0-9]{10})|(\+[0-9]{12}))?$/ }
 


end
