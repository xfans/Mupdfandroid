package com.artifex.mupdf;

import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.List;

import android.app.AlertDialog;
import android.app.ListActivity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

public class ChoosePDFActivity extends ListActivity {
	private File    mDirectory;
	private File [] mFiles;
	private List<String> fileNames = new ArrayList<String>();
	private ArrayAdapter<String> adapter;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		if (android.os.Environment.getExternalStorageState().equals(
				android.os.Environment.MEDIA_MOUNTED)) {
		String fileStr = Environment.getExternalStorageDirectory().getAbsolutePath();
		
		mDirectory = new File(fileStr);
		mFiles = mDirectory.listFiles();
		TextView v = new TextView(this);
		v.setText("./");
		getListView().addHeaderView(v);
		if(mFiles != null){
			for (File f : mFiles){
				fileNames.add(f.getName());
			}
		}
		adapter = new ArrayAdapter<String>(this, R.layout.picker_entry, fileNames);
		setListAdapter(adapter);
		}
	}

	@Override
	protected void onListItemClick(ListView l, View v, int position, long id) {
		super.onListItemClick(l, v, position, id);
		String fileName;
		if(position == 0){
			fileName = mDirectory.getParent();
			if(fileName == null){
				return;
			}
		}else{
			fileName = mFiles[position-1].getAbsolutePath();
		}
		 
		File file = new File(fileName);
		if(file.isDirectory()){
			mDirectory = file;
			mFiles = file.listFiles();
			fileNames.clear();
			if(mFiles != null){
				for (File f : mFiles){
					fileNames.add(f.getName());
				}
			}
			
			adapter.notifyDataSetChanged();
			return;
		}
		if (fileName.toLowerCase().endsWith(".pdf")||fileName.toLowerCase().endsWith(".xps")||fileName.toLowerCase().endsWith(".cbz")){
			Uri uri = Uri.parse(fileName);
			Intent intent = new Intent(this,MuPDFActivity.class);
			intent.setAction(Intent.ACTION_VIEW);
			intent.setData(uri);
			startActivity(intent);
		}else{
			Toast.makeText(ChoosePDFActivity.this, "choose pdf/xps/cbz file", Toast.LENGTH_SHORT).show();
		}
		

	}
	class FileEntity{
		private String fileName;
		private File flie;
		public String getFileName() {
			return fileName;
		}
		public void setFileName(String fileName) {
			this.fileName = fileName;
		}
		public File getFlie() {
			return flie;
		}
		public void setFlie(File flie) {
			this.flie = flie;
		}
	}
}
