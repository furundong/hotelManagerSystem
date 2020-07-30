package com.wsy.util;

import java.net.URL;

import javax.swing.ImageIcon;

import com.wsy.Library;
/**
 * @author redpigedu.com
 * @qq 4407509
 */
public class CreatecdIcon {
	public static ImageIcon add(String ImageName){
		URL IconUrl = Library.class.getResource("/"+ImageName);
		ImageIcon icon=new ImageIcon(IconUrl);
		return icon;
	}
}
