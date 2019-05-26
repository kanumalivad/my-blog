package com.kanumalivad.controller;
import java.text.spi.*;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.kanumalivad.service.AddPostService;
import com.kanumalivad.service.GetData;
import com.kanumalivad.model.Posts;

@WebServlet("/admin/AddPostServlet")
public class AddPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddPostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		try
		{
			
			
		
			
			
			PrintWriter out = response.getWriter();
			boolean isMultipart = ServletFileUpload.isMultipartContent(request);
			
			System.out.println("request: "+request);
			if (!isMultipart) {
				System.out.println("File Not Uploaded");
			} else {
				FileItemFactory factory = new DiskFileItemFactory();
				ServletFileUpload upload = new ServletFileUpload(factory);
				List items = null;

				try {
					items = upload.parseRequest(request);
					System.out.println("items: "+items);
				} catch (FileUploadException e) {
					e.printStackTrace();
				}
				Iterator itr = items.iterator();
				Iterator it=items.iterator();
					
				FileItem i=(FileItem)it.next();
				String v0=i.getString();
				
				
				i=(FileItem)it.next();
				String v1=i.getString();
		
				 i=(FileItem)it.next();
				 i=(FileItem)it.next();
				String v2=i.getString();
				
				Date currentDate=new Date();
				
				
				while (itr.hasNext()) {
					FileItem item = (FileItem) itr.next();
					if (item.isFormField()){
						String name = item.getFieldName();
						System.out.println("name: "+name);
						String value = item.getString();
						System.out.println("value: "+value);
					} else {
						try {
							String itemName = item.getName();
							Random generator = new Random();
							int r = Math.abs(generator.nextInt());

							String reg = "[.*]";
							String replacingtext = "";
							System.out.println("Text before replacing is:-" + itemName);
							Pattern pattern = Pattern.compile(reg);
							Matcher matcher = pattern.matcher(itemName);
							StringBuffer buffer = new StringBuffer();

							while (matcher.find()) {
								matcher.appendReplacement(buffer, replacingtext);
							}
							int IndexOf = itemName.indexOf("."); 
							String domainName = itemName.substring(IndexOf);
							System.out.println("domainName: "+domainName);

							String finalimage = buffer.toString()+"_"+r+domainName;
							
							Posts p =new Posts(v0,v1,v2,finalimage,new Double("100"),currentDate);
							AddPostService addpost=new AddPostService();
							addpost.register(p);
							response.getWriter().write("Thy gyu");
							

							
							File savedFile = new File(getServletContext().getRealPath("")+"images\\"+finalimage);
							item.write(savedFile);
							
						
						} catch (Exception e) {
							e.printStackTrace();
						}
					}
				}
			}
		}
		catch(Exception e)
		{
			response.getWriter().write("Eror 6");
		}
	}

}
