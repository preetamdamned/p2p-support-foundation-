/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p2p;

/**
 *
 * @author preet_000
 */
public class Security {

    static public String superSanitize(String dirtyString) {
        if (null == dirtyString) {
            return null;
        }

        String tmp = dirtyString;
        // clean up line format chars
        tmp = tmp.replaceAll("\n", " ").replace("\r", " ").replace("\t", " ");
        // remove SGML markup
        tmp = tmp.replaceAll("<[^>]*>", " ");
        // remove any remaining metacharacters &;`'\|"*?~<>^()[]{}$ and null (00h)
        tmp = tmp.replaceAll("[\\&;`'\\\\\\|\"*?#=~<>^\\(\\)\\[\\]\\{\\}\\$\\x00]", "");

        // clean up whitespace
        tmp = tmp.replaceAll("\\s+", " ").trim();
        return tmp;
    }

}
