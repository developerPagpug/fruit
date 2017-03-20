<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class TrxDetailModel extends CI_Model {
	function save($value){
		$this->db->trans_begin();
		
		$this->db->insert('trxdetail', $value);
		
		if ($this->db->trans_status() === FALSE)
		{
			$this->db->trans_rollback();
			return  false;
		}
			$this->db->trans_commit();
			return  true;
	}

	function edit($clause, $value){
		$this->db->trans_begin();
		
		$this->db->where($clause);
		
		$this->db->update('trxdetail', $value);
		
		if ($this->db->trans_status() === FALSE)
		{
			$this->db->trans_rollback();
			return  false;
		}
		$this->db->trans_commit();
		return  true;
	}

	function delete($clause, $value){
		$this->db->trans_begin();
		
		$this->db->where($clause);
		
		$this->db->update('trxdetail', $value);
		
		if ($this->db->trans_status() === FALSE)
		{
			$this->db->trans_rollback();
			return  false;
		}
		$this->db->trans_commit();
		return  true;
	}

	function getAll(){
		$dep = $this->db->get('trxdetail');
		return $dep;
	}

	function getByClause($clause){
		$this->db->select('*');
		$this->db->join('trxHeader', 'trxHeader.idtrxheader = trxDetail.idtrxheader');
		$this->db->join('status', 'status.idstatus = trxheader.idstatus');
		$this->db->join('supplier', 'supplier.idsupplier = trxheader.idsupplier');
		$this->db->join('suppliertype', 'suppliertype.idsuppliertype = supplier.idsuppliertype');
		$this->db->join('produk', 'trxDetail.idproduk = produk.idproduk');
		$this->db->where($clause);
		$dep = $this->db->get('trxdetail');
		return $dep;
	}

	function getReturByClause($clause){
		$this->db->select('*');
		$this->db->join('trxHeader', 'trxHeader.idtrxheader = trxDetail.idtrxheader');
		$this->db->join('status', 'status.idstatus = trxheader.idstatus');
		$this->db->join('supplier', 'supplier.idsupplier = trxheader.idsupplier');
		$this->db->join('suppliertype', 'suppliertype.idsuppliertype = supplier.idsuppliertype');
		$this->db->join('produk', 'trxDetail.idproduk = produk.idproduk');
		$this->db->where($clause);
		$dep = $this->db->get('trxdetail');
		return $dep;
	}
}