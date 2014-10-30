<%@page import="java.io.FilenameFilter"%>
<%@page import="org.apache.commons.io.filefilter.FalseFileFilter"%>
<%@page import="org.apache.commons.io.filefilter.FileFileFilter"%>
<%@page import="java.io.File"%>
<%
    File f = new File(application.getInitParameter("file-upload"));
//    File dir = new File(".");
    String[] files = f.list(new FilenameFilter() {
        public boolean accept(File dir, String name) {
            String p = name.substring(name.lastIndexOf('.'));
//            if (p.equals(".pdf")||p.equals(".pdf"))
                return true;
//            else
//                return false;
        }
    });
    for (String file : files) {
        out.println(file + "<br/>");
//        out.println(file.substring(file.lastIndexOf('.'))==".pdf"+"<br/>");
//        out.println(file.substring(file.lastIndexOf('.'))==".ppt"+"<br/>");
    }
%>
