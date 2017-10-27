package entity;

import java.io.Serializable;

public class Goods implements Serializable {
     private  String goods_id;
     private  String goods_name;
     private  String goods_price;
     private  String goods_total_price;
     private  String user_name;
     private  String quantity;
     private  String img;
	 public String getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(String goodsId) {
		goods_id = goodsId;
	}
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goodsName) {
		goods_name = goodsName;
	}
	public String getGoods_price() {
		return goods_price;
	}
	public void setGoods_price(String goodsPrice) {
		goods_price = goodsPrice;
	}
	public String getGoods_total_price() {
		return goods_total_price;
	}
	public void setGoods_total_price(String goodsTotalPrice) {
		goods_total_price = goodsTotalPrice;
	}

	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_name() {
		return user_name;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
}
