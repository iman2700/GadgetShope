<?php 
class home extends Controller
{
   	  private $totalitem=0;
		private $totalPrice=0;
	   function __construct()
	 {
		  
		if(!isLoggedIn()){
			echo "1111111111111111111111";
        header('location: ' . URLROOT . '/' . 'users/login');
      }
	  
		 
			if(isset($_SESSION["cart_item"]))
			{
				foreach($_SESSION["cart_item"] as $item)
				{
					$this->totalitem+=$item['quantity'];
					$this->totalPrice += $item['Price'] * $item['quantity'];
					 
				}
			}
		 parent::__construct();
	 }
	   
	 public function detail()
	 {
		  
			 $id=$_GET['GadgetID'];
			 $gadget_model=$this->Model('gadgetModel');
		     $gadget=$gadget_model->getGadgetByID($id);
			  
		  $this->View('home/detail',['totalitem'=>$this->totalitem,'totalPrice'=>$this->totalPrice,'gadget'=>$gadget]);
		   
	 }
	 
	public function index()
	{
				
		$gadget_model=$this->Model('gadgetModel');
		$gadget=$gadget_model->getAllGadget();
		$category_model=$this->Model('categoryModel');
		$category=$category_model->getAllCategory();
		 
		 
		//$gadget->id=12;
		// $gadget->name='iman';
		  $this->View('home/index',['gadget'=>$gadget,'category'=>$category,'totalitem'=>$this->totalitem,'totalPrice'=>$this->totalPrice]);
			  
		 
	}
	public function categoryChange()
	{
	     
		$category_model=$this->Model('categoryModel');
		$gadget=$category_model->getCategoryByID($_POST['CategoryID']);
		$category=$category_model->getAllCategory();
		  $this->View('home/index',['gadget'=>$gadget,'category'=>$category,'totalitem'=>$this->totalitem,'totalPrice'=>$this->totalPrice]);
	}
	
	
	public function search()
	{
	    $gadget_model=$this->Model('gadgetModel');
		$gadget=$gadget_model->searchGadget($_POST['gadgetname']); 
		 
		$category_model=$this->Model('categoryModel');
		$category=$category_model->getAllCategory();
		require_once '../app/views/home/index.php';
	}
	
	public function addGaget()
	{
		 
		 $shopping_model=$this->Model('shoppingModel');
		 $shopping_model->addToCart($_POST['GadgetID']); 
		 
		  header('Location: index');
         
	}
}