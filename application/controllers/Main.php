<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
 
class Main extends CI_Controller {
 
function __construct()
{
        parent::__construct();
 
/* Standard Libraries of codeigniter are required */
$this->load->database();
$this->load->helper('url');
/* ------------------ */ 
 
$this->load->library('grocery_CRUD');
 
}
 
public function index()
{
echo "<h1>Welcome to the world of Codeigniter</h1>";//Just an example to ensure that we get into the function
die();
}
 
public function pegawai()
{
$this->grocery_crud->set_table('pegawai');
$output = $this->grocery_crud->render();
 $this->_example_output($output);        
}

public function kota()
{
$this->grocery_crud->set_table('kota');
$output = $this->grocery_crud->render();
 $this->_example_output($output);        
}
    
    public function kelamin()
{
$this->grocery_crud->set_table('kelamin');
$output = $this->grocery_crud->render();
 $this->_example_output($output);        
}
    
    public function posisi()
{
$this->grocery_crud->set_table('posisi');
$output = $this->grocery_crud->render();
 $this->_example_output($output);        
}
 
function _example_output($output = null)
 
{
$this->load->view('template.php',$output);    
}
}
 
/* End of file Main.php */
/* Location: ./application/controllers/Main.php */
 