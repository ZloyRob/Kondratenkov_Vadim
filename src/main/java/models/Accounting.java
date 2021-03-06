package models;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Accounting {
    public Date ds;
    public Date de;
    public int vol;
    public int resId;

    public Accounting() {

    }

    public Accounting(Date ds, Date de, int vol, int resId) {
        this.ds = ds;
        this.de = de;
        this.vol = vol;

        this.resId = resId;
    }

    public String toString() {
        String formatString = "Ресурс: %d Объем: %d Дата начала: %s Дата окончания: %s";
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return String.format(formatString, resId, vol, sdf.format(ds), sdf.format(de));
    }

    public String getDs() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return sdf.format(ds);
    }

    public String getDe() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        return sdf.format(de);
    }

}
