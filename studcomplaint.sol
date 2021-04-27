// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

// Important Instructions:
// You can add additional variables or functions wherever required
// You have to keep track of all external users along with their role like student, mess_manager, mess_representative, faculty, warden To achieve this you may come up with additional contract or you can modify existing contract  
// Nothing should be accessible to anyone from outside the organization
// Try to consider all possible boundry cases and mention all those which you have handled in your code with comments For ex:
//  1. People from organization can add comments only if complaint is not closed.
//  2. Any type of modifications should not be allowed to already Resolved complaint.
//  
contract studcomplaint {
    
    struct comment{
        string message; // comment string
        address commentee; // address of the person who wants to comment
        //date_time
    }
    

    struct complaint{
        uint complaint_id; //unique complaint_id
        uint mess_id;  // mess 1 or mess 2 etc
        string complaint_msg; // actual complaint 
        address complainer; // address of student who wants to raise complaint
        address assigned_to; // address of mess manager
        bool status; // complaint status can be Assigned, Processing, Resolved
        uint fine_if_any; // default 0;
        comment [] comments;
    }
    
    mapping(uint => complaint) complaints;
    
    
    function register_complaint(uint mess_id, string memory message) public returns (uint){
    // Only Student can register complaint     
    
        
    }
    
    
    function add_comment(uint complaint_id, string memory comment_str) public {
    // Anyone within the organization can add comment     
    
        
    }
    
    
    function charge_fine(uint complaint_id, string memory message){
    // Only wardens can charge_fine     
    
        
    }
    
    function close_status(uint complaint_id, string memory message_str){
    // Only Mess_representative or complainer can change the status to Resolved
    // Make use of add_comment functionality to provide closing comments 
    
    }
    
    
    
}