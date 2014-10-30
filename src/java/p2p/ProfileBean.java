/*
 * profile container
 */
package p2p;

import java.io.Serializable;

/**
 *
 * @author preet_000
 */
public class ProfileBean implements Serializable {
private Integer profile_id,User_id,xp;
private String about,pro_pic_map,profession,org;
private Boolean flag;

    public Integer getProfile_id() {
        return profile_id;
    }

    public void setProfile_id(Integer profile_id) {
        this.profile_id = profile_id;
    }

    public Integer getUser_id() {
        return User_id;
    }

    public void setUser_id(Integer User_id) {
        this.User_id = User_id;
    }

    public Integer getXp() {
        return xp;
    }

    public void setXp(Integer xp) {
        this.xp = xp;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public String getPro_pic_map() {
        return pro_pic_map;
    }

    public void setPro_pic_map(String pro_pic_map) {
        this.pro_pic_map = pro_pic_map;
    }

    public String getProfession() {
        return profession;
    }

    public void setProfession(String profession) {
        this.profession = profession;
    }

    public String getOrg() {
        return org;
    }

    public void setOrg(String org) {
        this.org = org;
    }

    public Boolean getFlag() {
        return flag;
    }

    public void setFlag(Boolean flag) {
        this.flag = flag;
    }
}
