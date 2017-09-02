package com.wedlock.util;

import java.awt.AlphaComposite;
import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.imageio.ImageIO;

public class ImageResizer 
{
	private int resizeImgWidth = 1000;
	private int resizeImgHight = 0;

	public byte[] resize(byte[] original) {
		try {
			InputStream in = new ByteArrayInputStream(original);
			BufferedImage orgBuff = ImageIO.read(in);
			
			if(orgBuff.getWidth()>1000)
				this.resizeImgHight = (int)(orgBuff.getHeight()/((double)orgBuff.getWidth()/this.resizeImgWidth));
			else
			{
				this.resizeImgWidth = orgBuff.getWidth();
				this.resizeImgHight = orgBuff.getHeight();
			}
			
			//int type = orgBuff.getType() == 0 ? BufferedImage.TYPE_INT_ARGB : orgBuff.getType();
			int type = BufferedImage.TYPE_INT_RGB;
			
			/*BufferedImage resizeImagePng = resizeImage(orgBuff, type);
			ImageIO.write(resizeImagePng, "png", new File("c:\\mkyong_png.jpg"));*/

			BufferedImage resizeImageHint = resizeImageWithHint(orgBuff, type);

			ByteArrayOutputStream baos = new ByteArrayOutputStream();
			ImageIO.write(resizeImageHint, "jpg", baos);
			baos.flush();
			original = baos.toByteArray();
			baos.close();

		} catch (IOException e) {
			System.out.println(e.getMessage());
		}
		return original;
	}

	private BufferedImage resizeImage(BufferedImage originalImage, int type) {
		BufferedImage resizedImage = new BufferedImage(resizeImgWidth, resizeImgHight, type);
		Graphics2D g = resizedImage.createGraphics();
		g.drawImage(originalImage, 0, 0, resizeImgWidth, resizeImgHight, null);
		g.dispose();

		return resizedImage;
	}

	private BufferedImage resizeImageWithHint(BufferedImage originalImage, int type) {

		BufferedImage resizedImage = new BufferedImage(resizeImgWidth, resizeImgHight, type);
		Graphics2D g = resizedImage.createGraphics();
		g.drawImage(originalImage, 0, 0, resizeImgWidth, resizeImgHight,Color.WHITE, null);
		g.dispose();
		g.setComposite(AlphaComposite.Src);

		g.setRenderingHint(RenderingHints.KEY_INTERPOLATION, RenderingHints.VALUE_INTERPOLATION_BILINEAR);
		g.setRenderingHint(RenderingHints.KEY_RENDERING, RenderingHints.VALUE_RENDER_QUALITY);
		g.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);

		return resizedImage;
	}
}
