package org.o7planning.appbanhang.activity;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.o7planning.appbanhang.R;
import org.o7planning.appbanhang.adapter.GioHangAdapter;
import org.o7planning.appbanhang.model.EventBus.TinhTongEvent;
import org.o7planning.appbanhang.model.GioHang;
import org.o7planning.appbanhang.utils.Utils;

import java.text.DecimalFormat;
import java.util.List;

public class GioHangActivity extends AppCompatActivity {
    TextView giohangtrong, tongtien;
    Toolbar toolbar;
    RecyclerView recyclerView;
    Button btnmuahang;
    GioHangAdapter adapter;
    long tongtiensp;



    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView( R.layout.activity_gio_hang);
        initView();
        initControl();
        tinhTongTien();
    }

    private void tinhTongTien() {
        tongtiensp = 0;
        for (int i = 0; i<Utils.mangiohang.size(); i++){
            tongtiensp = tongtiensp+ (Utils.mangiohang.get(i).getGiasp()* Utils.mangiohang.get(i).getSoluong());
        }
        DecimalFormat decimalFormat = new DecimalFormat("###,###,###");
        tongtien.setText(decimalFormat.format(tongtiensp));
    }

    private void initControl() {
        setSupportActionBar(toolbar);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        toolbar.setNavigationOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
            }
        });

        recyclerView.setHasFixedSize(true);
        RecyclerView.LayoutManager layoutManager = new LinearLayoutManager(this);
        recyclerView.setLayoutManager(layoutManager);
        if (Utils.mangiohang.size() == 0){
            giohangtrong.setVisibility(View.VISIBLE);
        }else {
            adapter = new GioHangAdapter(getApplicationContext(), Utils.mangiohang);
            recyclerView.setAdapter(adapter);
        }

        btnmuahang.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getApplicationContext(), ThanhToanActivity.class);
                intent.putExtra("tongtien",tongtiensp);
                startActivity(intent);
            }
        });


    }

    private void initView() {
        giohangtrong =  findViewById(R.id.txtgiohangtrong);
        tongtien =  findViewById(R.id.txttongtien);
        toolbar = findViewById(R.id.toobar);
        recyclerView = findViewById(R.id.recycleviewgiohang);
        btnmuahang = findViewById(R.id.btnmuahang);
    }

    @Override
    protected void onStart() {
        super.onStart();
        EventBus.getDefault().register(this);
    }

    @Override
    protected void onStop() {
        EventBus.getDefault().unregister(this);
        super.onStop();
    }
    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void evenTinhTien(TinhTongEvent event){
        if (event != null){
            tinhTongTien();
        }
    }

}