package com.igeek.web;

import com.igeek.domain.Page;
import com.igeek.domain.Product;
import com.igeek.service.ProductService;
import com.igeek.utils.BeanFactory;
import com.igeek.service.CategoryService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/page")
public class PageServlet extends BaseServlet {
    ProductService ps=(ProductService)BeanFactory.getBean("myredwineservice");
    CategoryService cs=(CategoryService)BeanFactory.getBean("mycateservice");
    //Page newPage= (Page) BeanFactory.getBean("mypage");
    public void getPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int currentpage= Integer.parseInt(request.getParameter("currentPage"));
        Page<Product> page= new Page<Product>();
        page=ps.getPage(currentpage,9);  //获取页面信息
        String path="page?method=getPage&currentPage=";
        page.setPath(path);
        page.setPageNumber(currentpage);
        int maxPage= (int) Math.ceil(page.getTotalRecord()/9);
        request.setAttribute("maxPage",maxPage);
        request.setAttribute("allredwine",page.getList());
        request.setAttribute("page",page);
        request.getSession().setAttribute("pathSession","currentPage="+currentpage);
        request.getRequestDispatcher("shopgridleft.jsp").forward(request,response);
    }
    public void getPageByCid(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int currentpage= Integer.parseInt(request.getParameter("currentPage"));
        Page<Product> page= new Page<Product>();
        String cat=request.getParameter("search_by_cat");
        String cid=null;

        if (cat.equals("all_cat")){
            page.setList(ps.getallredwine(9)); //获取页面信息
        }else if(cat.equals("Roes")){
            cid="1";
            page=ps.getRedWineByCId(cid,currentpage);  //获取页面信息
        }else if(cat.equals("Organic")){
            cid="2";
            page=ps.getRedWineByCId(cid,currentpage);  //获取页面信息
        }else if(cat.equals("Kosher")){
            cid="3";
            page=ps.getRedWineByCId(cid,currentpage);  //获取页面信息
        }
        else if(cat.equals("Champagne")){
            cid="4";
            page=ps.getRedWineByCId(cid,currentpage);  //获取页面信息
        }else {
            cid = "5";
            page = ps.getRedWineByCId(cid, currentpage);  //获取页面信息
        }
        String path="page?method=getPageByCid&search_by_cat="+cat+"&currentPage=";
        page.setPath(path);
        page.setPageNumber(currentpage);
        int maxPage= (int) Math.ceil(page.getTotalRecord()/9.0);
        request.setAttribute("maxPage",maxPage);
        request.setAttribute("allredwine",page.getList());
        request.setAttribute("page",page);
        request.getSession().setAttribute("pathSession","search_by_cat="+cat+"&currentPage="+currentpage);
        request.getRequestDispatcher("shopgridleft.jsp").forward(request,response);
    }


    public void getRedWineByPrice(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String price = request.getParameter("price");
        int currentpage= Integer.parseInt(request.getParameter("currentPage"));
        String cat = request.getParameter("search_by_cat");
        Page<Product> page=null;
        if (cat==null){
            String[] prices = price.split("-");
            int price1= Integer.parseInt(prices[0].replace("$ ",""));
            int price2= Integer.parseInt(prices[1].replace("$ ",""));
            page=ps.getRedWineByPrice(price1,price2,currentpage);
            page.setPageNumber(currentpage);
            String path="page?method=getRedWineByPrice&price="+price+"&currentPage=";
            page.setPath(path);
            int maxPage= (int) Math.ceil(page.getTotalRecord()/9.0);
            request.setAttribute("page",page);
            request.setAttribute("maxPage",maxPage);
            request.setAttribute("allredwine",page.getList());
            request.getRequestDispatcher("shopgridleft.jsp").forward(request,response);
        }else{
            String[] prices = price.split("-");
            int price1= Integer.parseInt(prices[0].replace("$ ",""));
            int price2= Integer.parseInt(prices[1].replace("$ ",""));
            String cid=cs.getCidByCname(cat);
            page=ps.getRedWineByPrice(price1,price2,currentpage,cid);
            page.setPageNumber(currentpage);
            String path="page?method=getRedWineByPrice&price="+price+"&currentPage=";
            page.setPath(path);
            int maxPage= (int) Math.ceil(page.getTotalRecord()/9.0);
            request.setAttribute("page",page);
            request.setAttribute("maxPage",maxPage);
            request.setAttribute("allredwine",page.getList());
            request.getRequestDispatcher("shopgridleft.jsp").forward(request,response);
        }

    }
}
