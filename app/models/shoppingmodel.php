<?php
class shoppingModel
{
	function __construct($db)
	{
		 try 
		 {
            $this->db = $db;
			
        } 
		catch (PDOException $e) 
		{
            exit('Database connection could not be established.');
        }
		
	}
	
	
	 
	
	public function addToCart($id)
	{
		$sql='select * from gadget where GadgetID='.$id;
		
		 
		   $result=$this->db->query($sql);
		  
		 
		 while($row=$result->fetch())
	{
		$gadget[]=array(
		 
		'GadgetID' => $row->GadgetID,
        'Name' => $row->Name,
		'Description' => $row->Description,
		'GadgetID' => $row->GadgetID,
		'Image' => $row->Image,
		'Price' => $row->Price,
		'quantity' => 1	 
		);
		 
	}
	session_start();
	

	
	if(!empty($_SESSION["cart_item"])) {
		
				if(in_array($gadget[0]["GadgetID"],array_keys($_SESSION["cart_item"]))) {
			 
			  
			      foreach($_SESSION["cart_item"] as $k => $v) {
						if($gadget[0]["GadgetID"] == $v['GadgetID']) {
							if(empty($_SESSION["cart_item"][$k]["quantity"])) {
								$_SESSION["cart_item"][$k]["quantity"] = 0;
							}
							 
							$_SESSION["cart_item"][$k]["quantity"] += 1;
							 
							
						}
				}
			} else {
				
				$_SESSION["cart_item"] = array_merge($_SESSION["cart_item"],$gadget);
			}
		} 
		else {
			$_SESSION["cart_item"] = $gadget;
		}
		
	}

 
	 public function deleteItem($id)
	 {
		  session_start();
		 
		 if(!empty($_SESSION["cart_item"])) {
			
		foreach($_SESSION["cart_item"] as $k => $v) {
			 
			if($id == $v['GadgetID'])	unset($_SESSION["cart_item"][$k]);				
			if(empty($_SESSION["cart_item"])) unset($_SESSION["cart_item"]);
			
		}
	}
	
	 }
		public function order($data)
		{
			$sql='insert into customer(Name,phone,street,city,zip,country)'. 
			'values(:Name,:phone,:street,:city,:zip,:country);SELECT LAST_INSERT_ID();';
			 $s = $this->db->prepare($sql);
			$s->bindValue(':Name', $data[0]['Name']);
			$s->bindValue(':phone', $data[0]['phone']);
			$s->bindValue(':street', $data[0]['street']);
			$s->bindValue(':city', $data[0]['city']);
			$s->bindValue(':zip', $data[0]['zip']);
			$s->bindValue(':country', $data[0]['country']);
			$s->execute();
			$last_id = $this->db->lastInsertId();
			 
			session_start();	
			if(!empty($_SESSION["cart_item"])) 
			{
		
         	
			foreach($_SESSION["cart_item"] as $k => $v)
			{
			 
			  
			 $sql='insert into orderitem(GadgetId,CustomerId,qty) values(:GadgetId,:CustomerId,:qty)';
			 $s = $this->db->prepare($sql);
			 $s->bindValue(':GadgetId',$v['GadgetID']);
			 $s->bindValue(':CustomerId',$last_id);
			 $s->bindValue(':qty',$v['quantity']);
			 $s->execute();
			 
			}
	  	unset($_SESSION["cart_item"]);
   
		}
    
		}
}