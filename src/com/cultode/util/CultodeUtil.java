package com.cultode.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Date;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map.Entry;
import java.util.TimeZone;
import java.util.function.Supplier;

import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.extractor.WordExtractor;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
import org.springframework.web.multipart.MultipartFile;

public class CultodeUtil {

	public static Date getCurrentDate() {

		java.util.Date today = new java.util.Date();
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		df.setTimeZone(TimeZone.getTimeZone("Asia/Kolkata"));
		String IST = df.format(today);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date utilDate = null;
		try {
			utilDate = format.parse(IST);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		java.sql.Date currentDate = new java.sql.Date(utilDate.getTime());
		return currentDate;

	}
	
	public static Supplier<String> currentMonth = () -> {
		Calendar cal = Calendar.getInstance();
		cal.setTime(getCurrentDate());
		return String.valueOf(cal.get(Calendar.MONTH) + 1);
	};
	
	public static Supplier<String> previousMonth1 = () -> {
		Calendar cal = Calendar.getInstance();
		cal.setTime(getCurrentDate());
		return String.valueOf(cal.get(Calendar.MONTH));
	};
	
	public static Supplier<String> previousMonth2 = () -> {
		Calendar cal = Calendar.getInstance();
		cal.setTime(getCurrentDate());
		return String.valueOf(cal.get(Calendar.MONTH - 1));
	};
	
	public static Supplier<Integer> currentYear = () -> {
		Calendar cal = Calendar.getInstance();
		cal.setTime(getCurrentDate());
		return cal.get(Calendar.YEAR);
	};

	public static Date getExpDt() {

		Calendar calender = Calendar.getInstance(TimeZone.getTimeZone("IST"),
				Locale.ENGLISH);
		calender.add(Calendar.YEAR, 1);
		long time = calender.getTimeInMillis();
		Date expdt = new Date(time);
		System.out.println("Expiry Date is " + expdt);
		return expdt;

	}

	public static File multipartToFile(MultipartFile multipart)
			throws IllegalStateException, IOException {
		File convFile = new File(multipart.getOriginalFilename());
		multipart.transferTo(convFile);
		return convFile;
	}

	public static String readWordDocument(String filepath, String filename)
			throws IOException {

		FileInputStream fs = null;
		StringBuilder textEntry = new StringBuilder();
		XWPFDocument documentx = null;
		HWPFDocument document = null;
		WordExtractor wordExtractor = null;
		try {
			fs = new FileInputStream(filepath);
			if (fs.available() >= 512) {

				if (filename.endsWith("docx")) {

					documentx = new XWPFDocument(fs);

					List<XWPFParagraph> paragraphs = documentx.getParagraphs();

					for (XWPFParagraph para : paragraphs) {
						textEntry.append("<p>" + para.getText() + "</p>");
					}

				} else if (filename.endsWith("doc")) {

					document = new HWPFDocument(fs);
					wordExtractor = new WordExtractor(document);

					String[] paragraphs = wordExtractor.getParagraphText();

					for (int i = 0; i < paragraphs.length; i++) {

						textEntry.append("<p>" + paragraphs[i] + "</p>");
					}

				}

				return textEntry.toString();
			} else {
				return "Other did not provided valid content";
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (fs != null)
				fs.close();
			if (documentx != null)
				documentx.close();
			if (wordExtractor != null)
				wordExtractor.close();

		}
		return null;
	}

	public static boolean isDateIsToday(String likeDate) {
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date likedate = null;
		try {
			likedate = df.parse(likeDate);

			java.util.Date today = new java.util.Date();
			if (df.parse(df.format(today)).equals(likedate)) {
				return true;
			} else
				return false;
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;

	}
	
	public static String buildTestMail(String subject) {
		String body = "<div style='background-color: #d9edf7; border-color: #bce8f1; color: #31708f; padding: 15px; margin-bottom: 20px; border: 1px solid transparent;'>"
				+"<p>&nbsp;</p>"
				+"<img src='http://mysuperbrain.in/img/msk.png' style='width: 100%'"
				+"<hr><p>&nbsp;</p>"
				+ "<h3>Dear Parent, "
				+ " !</h3>" + "<p>Thanks for participating in the My Super Kid Challenge. We are extremely happy to now showcase your child's talent to the whole world.</p>"
				+ "<p>You can view the submission here  :</p>"
				
				+ "<br>"
				+ "<p>You can promote it on social media to get more people to recognize your child's talents. We will send you weekly updates about the recognition your kid is getting and we are sure you would be the happiest parent soaking in all the adulation.</p>"
				+ "<p>We request you to invite 3 parents to participate in this #mysuperkid challenge so that we can have millions of parents sharing the talents of their kids and building a society where every dream is realized and every talent nurtured.</p>"
				+ "<h3>All the best !</h3>"
				+ "<p>Thanks & Regards,</p>"
				+ "<p>Team Tikaana.</p>" + "</div>";
		return body;
	}
	
	public static String buildOTPMail(String name, String email, String password) {
		String body = "<h3>Dear "+name+",</h3>"
					+ "<p>Thank you for registering at Exalt Abroad - Turning your study abroad dreams into reality.</p>"				
					+ "<p>Please verify your account at ExaltAbroad using the below one time password.</p>"
					+ "<p>Your OTP is : "+password+""
					+ "<p>Thanks & Regards,</p>"
					+ "<p>Team Exalt Abroad.</p>";
		return body;
	}
	
}
