package daos;

import java.util.List;

import entity.Goods;

public interface GoodsDao {
    public List<Goods> findByUsername(String username);
    public int deleteGoods(String username,String goodsname);
    public int insertGoods(Goods goods);
    public int update(Goods goods);
    public Goods findByGoodsname(String goodsname,String username);
    public int count(String bookName);
}
