/*
//bean for infor stored in db
 */
package com.fyp;

/**
 *
 * @author macke
 */
public class Hack implements Comparable<Hack> {
    private String title;
    private String tip;
    private int tipID; 
    private int like;
    //making an obj of dao so can call method update likes
    //goes to db and updats tip with input for likes it has
    
    
   public Hack(String title, String tip, int tipID, int like){
    this.title = title;
    this.tip = tip;
    this.tipID = tipID;
    this.like = like; 
      }

    public int getLike() {
        return like;
    }

    public void setLike(int like) {
        this.like = like;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTip() {
        return tip;
    }

    public void setTip(String tip) {
        this.tip = tip;
    }

    public int getTipID() {
        return tipID;
    }

    public void setTipID(int tipID) {
        this.tipID = tipID;
    }

    @Override
    public int compareTo(Hack o) {
        return this.like - o.like;
    }

//if this.date etc (>/<)
//compare dates
//choose 
}
