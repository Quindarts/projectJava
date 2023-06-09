package gui;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import entity.NhanVien;
import java.awt.BorderLayout;
import java.awt.Color;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.ImageIcon;
import java.awt.Font;
import javax.swing.SwingConstants;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.io.File;
import java.io.IOException;
import java.awt.Rectangle;
import java.awt.Cursor;

public class ManHinhNhanVien_JFrame extends JFrame {

	/**
	 * 
	 */
	private String cl_greenhold = "#9febd4";
	private String cl_green = "#00c691";
	private String cl_greyblue = "#f0f6fb";
	private String cl_greenbold = "#015a06";
	private String cl_yellow = "#fcbe00";
	private String cl_black = "#222222";
	private Font font_btn16 = new Font("Arial", Font.BOLD, 16);
	private Font font_btn13 = new Font("Arial", Font.BOLD, 13);
	private Font font_btnita = new Font("Arial", Font.ITALIC, 13);

	private static final long serialVersionUID = 1L;
	private JPanel contentPane;
	private JPanel pRight;
	private JPanel pTrangChu;
	private JPanel pKhachHang;
	private JPanel pLinhKien;
	private JPanel pHoaDon;
	private JLabel lblHoaDon;
	private JPanel pDangXuat;
	private JPanel pNhanVien;
	private JPanel pThongKe;

	private JLabel lblTrangChu;
	private JLabel lblKhachHang;
	private JLabel lblThongKe;
	private JLabel lblDangXuat;
	private JLabel lblNhanVien;
	private JLabel pchon;

	@SuppressWarnings("unused")
	private NhanVien nhanVien;
	private JLabel lblHDSD;

	public ManHinhNhanVien_JFrame(NhanVien nhanVien) {
		super();

		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 1320, 710);
		setResizable(false);
		setLocationRelativeTo(null);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		setTitle("Man Hinh Nhân Viên");
		contentPane.setLayout(null);

		JPanel pLeft = new JPanel();
		pLeft.setBackground(Color.white);
		pLeft.setBounds(0, 0, 291, 684);
		contentPane.add(pLeft);
		pLeft.setLayout(null);

		JPanel panel_2 = new JPanel();
		panel_2.setBackground(Color.white);
		panel_2.setBounds(0, 0, 293, 144);
		pLeft.add(panel_2);
		panel_2.setLayout(null);

		JLabel lblNewLabel = new JLabel("");
		lblNewLabel.setBackground(null);
		lblNewLabel.setIcon(new ImageIcon(ManHinhNhanVien_JFrame.class.getResource("/image/logoJava.png")));
		lblNewLabel.setBounds(49, 0, 201, 144);
		panel_2.add(lblNewLabel);

		pTrangChu = new JPanel();
		pTrangChu.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		pTrangChu.setForeground(new Color(0, 0, 0));
		pTrangChu.setBackground(Color.decode(cl_green));
		pTrangChu.setBounds(30, 168, 236, 51);
		pLeft.add(pTrangChu);
		pTrangChu.setLayout(null);

		lblTrangChu = new JLabel(" Màn hình chính         ");
		lblTrangChu.setHorizontalAlignment(SwingConstants.RIGHT);
		lblTrangChu.setIcon(new ImageIcon(ManHinhNhanVien_JFrame.class.getResource("/image/home_30px.png")));
		lblTrangChu.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));

		lblTrangChu.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseEntered(MouseEvent e) {
				if (e.getSource() != pchon) {
					pTrangChu.setBackground(Color.decode(cl_yellow));
				}
			}

			@Override
			public void mouseExited(MouseEvent e) {

				if (e.getSource() != pchon) {
					pTrangChu.setBackground(Color.decode(cl_yellow));
				}

			}

			@Override
			public void mouseClicked(MouseEvent e) {
				pRight.removeAll();
				pRight.setLayout(new BorderLayout());
				pRight.add(new ManHinhChinh_Panel(nhanVien));
				pRight.invalidate();
				pRight.repaint();
				pTrangChu.setBackground(Color.decode(cl_green));
				pKhachHang.setBackground(Color.decode(cl_green));
				pLinhKien.setBackground(Color.decode(cl_green));
				pHoaDon.setBackground(Color.decode(cl_green));
				pNhanVien.setBackground(Color.decode(cl_green));
				pThongKe.setBackground(Color.decode(cl_green));
				pDangXuat.setBackground(Color.decode(cl_green));
				pchon = lblTrangChu;
			}
		});

		lblTrangChu.setForeground(new Color(255, 255, 255));
		lblTrangChu.setFont(new Font("Arial", Font.PLAIN, 17));
		lblTrangChu.setBounds(0, 0, 236, 51);
		pTrangChu.add(lblTrangChu);

		pKhachHang = new JPanel();
		pKhachHang.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));

		pKhachHang.setLayout(null);
		pKhachHang.setBackground(Color.decode(cl_green));
		pKhachHang.setBounds(30, 229, 236, 51);
		pLeft.add(pKhachHang);

		lblKhachHang = new JLabel(" Khách Hàng           ");
		lblKhachHang.setIcon(new ImageIcon(ManHinhNhanVien_JFrame.class.getResource("/image/people_30px.png")));
		lblKhachHang.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));

		lblKhachHang.setBounds(new Rectangle(32, 0, 0, 0));
		lblKhachHang.setHorizontalAlignment(SwingConstants.RIGHT);
		lblKhachHang.setForeground(Color.WHITE);
		lblKhachHang.setFont(new Font("Arial", Font.PLAIN, 17));
		lblKhachHang.setBounds(0, 0, 236, 51);

		pKhachHang.add(lblKhachHang);

		pLinhKien = new JPanel();
		pLinhKien.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		pLinhKien.setLayout(null);
		pLinhKien.setBackground(Color.decode(cl_green));
		pLinhKien.setBounds(30, 290, 236, 51);

		pLeft.add(pLinhKien);

		JLabel lblLinhKien = new JLabel(" Linh Kiện                ");
		lblLinhKien
				.setIcon(new ImageIcon(ManHinhNhanVien_JFrame.class.getResource("/image/multiple_devices_30px.png")));
		lblLinhKien.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));

		lblLinhKien.setBounds(new Rectangle(32, 0, 0, 0));
		lblLinhKien.setHorizontalAlignment(SwingConstants.RIGHT);
		lblLinhKien.setForeground(Color.WHITE);
		lblLinhKien.setFont(new Font("Arial", Font.PLAIN, 17));
		lblLinhKien.setBounds(0, 0, 236, 51);

		pLinhKien.add(lblLinhKien);

		pHoaDon = new JPanel();
		pHoaDon.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		pHoaDon.setLayout(null);
		pHoaDon.setBackground(Color.decode(cl_green));
		pHoaDon.setBounds(30, 351, 236, 51);

		pLeft.add(pHoaDon);

		lblHoaDon = new JLabel(" Hóa Đơn                 ");
		lblHoaDon.setIcon(new ImageIcon(ManHinhNhanVien_JFrame.class.getResource("/image/purchase_order_30px.png")));
		lblHoaDon.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		lblHoaDon.setBounds(new Rectangle(32, 0, 0, 0));
		lblHoaDon.setHorizontalAlignment(SwingConstants.RIGHT);
		lblHoaDon.setForeground(Color.WHITE);
		lblHoaDon.setFont(new Font("Arial", Font.PLAIN, 17));
		lblHoaDon.setBounds(0, 0, 236, 51);

		pHoaDon.add(lblHoaDon);

		pThongKe = new JPanel();
		pThongKe.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		pThongKe.setLayout(null);
		pThongKe.setBackground(Color.decode(cl_green));
		pThongKe.setBounds(30, 473, 236, 51);

		pLeft.add(pThongKe);

		lblThongKe = new JLabel(" Thống Kê               ");
		lblThongKe.setIcon(new ImageIcon(ManHinhNhanVien_JFrame.class.getResource("/image/futures_30px.png")));
		lblThongKe.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		lblThongKe.setBounds(new Rectangle(32, 0, 0, 0));
		lblThongKe.setHorizontalAlignment(SwingConstants.RIGHT);
		lblThongKe.setForeground(Color.WHITE);
		lblThongKe.setFont(new Font("Arial", Font.PLAIN, 17));
		lblThongKe.setBounds(0, 0, 236, 51);

		pThongKe.add(lblThongKe);

		pDangXuat = new JPanel();
		pDangXuat.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		pDangXuat.setLayout(null);
		pDangXuat.setBackground(Color.decode(cl_green));
		pDangXuat.setBounds(30, 534, 236, 51);

		pLeft.add(pDangXuat);

		lblDangXuat = new JLabel(" Đăng Xuất              ");
		lblDangXuat.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		lblDangXuat.setIcon(
				new ImageIcon(ManHinhNhanVien_JFrame.class.getResource("/image/logout_rounded_left_30px.png")));
		lblDangXuat.setHorizontalAlignment(SwingConstants.RIGHT);
		lblDangXuat.setForeground(Color.WHITE);
		lblDangXuat.setFont(new Font("Arial", Font.PLAIN, 17));
		lblDangXuat.setBounds(new Rectangle(32, 0, 0, 0));
		lblDangXuat.setBounds(0, 0, 236, 51);

		pDangXuat.add(lblDangXuat);

		pNhanVien = new JPanel();
		pNhanVien.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		pNhanVien.setLayout(null);
		pNhanVien.setBackground(Color.decode(cl_green));
		pNhanVien.setBounds(30, 412, 236, 51);

		pLeft.add(pNhanVien);

		lblNhanVien = new JLabel(" Nhân Viên              ");
		lblNhanVien.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		lblNhanVien.setIcon(new ImageIcon(ManHinhNhanVien_JFrame.class.getResource("/image/member_30px.png")));
		lblNhanVien.setHorizontalAlignment(SwingConstants.RIGHT);
		lblNhanVien.setForeground(Color.WHITE);
		lblNhanVien.setFont(new Font("Arial", Font.PLAIN, 17));
		lblNhanVien.setBounds(new Rectangle(32, 0, 0, 0));
		lblNhanVien.setBounds(0, 0, 236, 51);

		pNhanVien.add(lblNhanVien);

		pRight = new ManHinhChinh_Panel(nhanVien);
		pRight.setBounds(291, 0, 1025, 684);

		contentPane.add(pRight);

		pRight.setLayout(null);
		pTrangChu.setBackground(Color.decode(cl_yellow));
		pchon = lblTrangChu;
		lblHDSD = new JLabel(" Hướng dẫn sử dụng ");
		lblHDSD.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
		lblHDSD.setHorizontalAlignment(SwingConstants.CENTER);
		lblHDSD.setForeground(Color.decode(cl_green));
		lblHDSD.setFont(font_btn16);
		lblHDSD.setBounds(30, 618, 236, 33);

		pLeft.add(lblHDSD);

		lblKhachHang.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseEntered(MouseEvent e) {
				if (e.getSource() != pchon) {
					pKhachHang.setBackground(Color.decode(cl_yellow));
				}

			}

			@Override
			public void mouseExited(MouseEvent e) {
				pKhachHang.setBackground(Color.decode(cl_green));
				if (e.getSource() != pchon) {
					pKhachHang.setBackground(Color.decode(cl_green));
				}

			}

			@Override
			public void mouseClicked(MouseEvent e) {
				pRight.removeAll();
				pRight.setLayout(new BorderLayout());
				pRight.add(new KhachHang_JPanel());
				pRight.invalidate();
				pRight.repaint();
				pTrangChu.setBackground(Color.decode(cl_green));
				pKhachHang.setBackground(Color.decode(cl_yellow));
				pLinhKien.setBackground(Color.decode(cl_green));
				pHoaDon.setBackground(Color.decode(cl_green));
				pNhanVien.setBackground(Color.decode(cl_green));
				pThongKe.setBackground(Color.decode(cl_green));
				pDangXuat.setBackground(Color.decode(cl_green));
				pchon = lblKhachHang;

			}
		});

		lblLinhKien.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseEntered(MouseEvent e) {
				// pLinhKien.setBackground(Color.decode(cl_yellow));
				if (e.getSource() != pchon) {
					pLinhKien.setBackground(Color.decode(cl_yellow));
				}
			}

			@Override
			public void mouseExited(MouseEvent e) {
//				pLinhKien.setBackground(Color.decode(cl_green));
				if (e.getSource() != pchon) {
					pLinhKien.setBackground(Color.decode(cl_green));
				}
			}

			@Override
			public void mouseClicked(MouseEvent e) {
				pRight.removeAll();
				pRight.setLayout(new BorderLayout());
				pRight.add(new LinhKien_JPanel());

				pRight.invalidate();
				pRight.repaint();
				pTrangChu.setBackground(Color.decode(cl_green));
				pKhachHang.setBackground(Color.decode(cl_green));
				pLinhKien.setBackground(Color.decode(cl_yellow));
				pHoaDon.setBackground(Color.decode(cl_green));
				pNhanVien.setBackground(Color.decode(cl_green));
				pThongKe.setBackground(Color.decode(cl_green));
				pDangXuat.setBackground(Color.decode(cl_green));
				pchon = lblLinhKien;
			}
		});

		lblHoaDon.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseEntered(MouseEvent e) {
				// pHoaDon.setBackground(Color.decode(cl_yellow));
				if (e.getSource() != pchon) {
					pHoaDon.setBackground(Color.decode(cl_yellow));
				}

			}

			@Override
			public void mouseExited(MouseEvent e) {
				// pHoaDon.setBackground(Color.decode(cl_green));
				if (e.getSource() != pchon) {
					pHoaDon.setBackground(Color.decode(cl_green));
				}

			}

			@Override
			public void mouseClicked(MouseEvent e) {
				pRight.removeAll();
				pRight.add(new HoaDon_JPanel());
				pRight.invalidate();
				pRight.repaint();
				pTrangChu.setBackground(Color.decode(cl_green));
				pKhachHang.setBackground(Color.decode(cl_green));
				pLinhKien.setBackground(Color.decode(cl_green));
				pHoaDon.setBackground(Color.decode(cl_yellow));
				pNhanVien.setBackground(Color.decode(cl_green));
				pThongKe.setBackground(Color.decode(cl_green));
				pDangXuat.setBackground(Color.decode(cl_green));
				pchon = lblHoaDon;
			}
		});

		lblThongKe.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseEntered(MouseEvent e) {
				// pThongKe.setBackground(Color.decode(cl_yellow));
				if (e.getSource() != pchon) {
					pThongKe.setBackground(Color.decode(cl_yellow));
				}
			}

			@Override
			public void mouseExited(MouseEvent e) {
				// pThongKe.setBackground(Color.decode(cl_green));
				if (e.getSource() != pchon) {
					pThongKe.setBackground(Color.decode(cl_green));
				}
			}

			@Override
			public void mouseClicked(MouseEvent e) {
				pRight.removeAll();
				pRight.add(new ThongKe_Panel());
				pRight.invalidate();
				pRight.repaint();
				pTrangChu.setBackground(Color.decode(cl_green));
				pKhachHang.setBackground(Color.decode(cl_green));
				pLinhKien.setBackground(Color.decode(cl_green));
				pHoaDon.setBackground(Color.decode(cl_green));
				pNhanVien.setBackground(Color.decode(cl_green));
				pThongKe.setBackground(Color.decode(cl_yellow));
				pDangXuat.setBackground(Color.decode(cl_green));
				pchon = lblThongKe;

			}
		});

		lblDangXuat.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseEntered(MouseEvent e) {
				// pDangXuat.setBackground(Color.decode(cl_yellow));
				if (e.getSource() != pchon) {
					pDangXuat.setBackground(Color.decode(cl_yellow));
				}
			}

			@Override
			public void mouseExited(MouseEvent e) {
				// pDangXuat.setBackground(Color.decode(cl_green));
				if (e.getSource() != pchon) {
					pDangXuat.setBackground(Color.decode(cl_green));
				}
			}

			@Override
			public void mouseClicked(MouseEvent e) {
				pTrangChu.setBackground(Color.decode(cl_green));
				pKhachHang.setBackground(Color.decode(cl_green));
				pLinhKien.setBackground(Color.decode(cl_green));
				pHoaDon.setBackground(Color.decode(cl_green));
				pNhanVien.setBackground(Color.decode(cl_green));
				pThongKe.setBackground(Color.decode(cl_green));
				pDangXuat.setBackground(Color.decode(cl_yellow));
				int t = JOptionPane.showConfirmDialog(null, "Bạn có muốn đăng xuất hay không ?", "Đăng xuất",
						JOptionPane.YES_NO_OPTION);
				if (t == JOptionPane.YES_OPTION) {
					setVisible(false);
					new DangNhap_JFrame().setVisible(true);
				} else {
					pDangXuat.setBackground(Color.decode(cl_green));
				}

				pchon = lblDangXuat;
			}
		});

		lblNhanVien.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseEntered(MouseEvent e) {
				// pNhanVien.setBackground(Color.decode(cl_yellow));
				if (e.getSource() != pchon) {
					pNhanVien.setBackground(Color.decode(cl_yellow));
				}
			}

			@Override
			public void mouseExited(MouseEvent e) {
				// pNhanVien.setBackground(Color.decode(cl_green));
				if (e.getSource() != pchon) {
					pNhanVien.setBackground(Color.decode(cl_green));
				}
			}

			@Override
			public void mouseClicked(MouseEvent e) {
				pRight.removeAll();
				pRight.add(new NhanVien_BH_JPanel());
				pRight.invalidate();
				pRight.repaint();
				pTrangChu.setBackground(Color.decode(cl_green));
				pKhachHang.setBackground(Color.decode(cl_green));
				pLinhKien.setBackground(Color.decode(cl_green));
				pHoaDon.setBackground(Color.decode(cl_green));
				pNhanVien.setBackground(Color.decode(cl_yellow));
				pThongKe.setBackground(Color.decode(cl_green));
				pDangXuat.setBackground(Color.decode(cl_green));
				pchon = lblNhanVien;

			}
		});

		lblHDSD.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent e) {
				String s = "" + ManHinhQuanLy_JFrame.class.getResource("/doc/HDSDNV.chm");
				s = s.substring(8);
				try {
					Runtime.getRuntime().exec("hh.exe " + s);
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}

			@Override
			public void mouseEntered(MouseEvent e) {
				lblHDSD.setForeground(Color.cyan);
			}

			@Override
			public void mouseExited(MouseEvent e) {
				lblHDSD.setForeground(Color.red);
			}
		});
	}
}
