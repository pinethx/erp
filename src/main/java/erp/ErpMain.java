package erp;

import java.awt.EventQueue;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import erp.ui.DepartmentManagerUI;
import erp.ui.EmployeeManagerUI;
import erp.ui.TitleManagerUI;

@SuppressWarnings("serial")
public class ErpMain extends JFrame implements ActionListener {

	private JPanel contentPane;
	private JButton btnTitle;
	private JButton btnDepartment;
	private JButton btnEmployee;

	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					ErpMain frame = new ErpMain();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	public ErpMain() {
		initialize();
	}

	private void initialize() {
		setTitle("Erp Management");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 107);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(new GridLayout(1, 0, 0, 0));

		btnTitle = new JButton("직책 관리");
		btnTitle.addActionListener(this);
		contentPane.add(btnTitle);

		btnDepartment = new JButton("부서 관리");
		btnDepartment.addActionListener(this);
		contentPane.add(btnDepartment);

		btnEmployee = new JButton("사원 관리");
		btnEmployee.addActionListener(this);
		contentPane.add(btnEmployee);
	}

	public void actionPerformed(ActionEvent e) {
		if (e.getSource() == btnEmployee) {
			actionPerformedBtnEmployee(e);
		}
		if (e.getSource() == btnDepartment) {
			actionPerformedBtnDepartment(e);
		}
		if (e.getSource() == btnTitle) {
			actionPerformedBtnTitle(e);
		}
	}

	protected void actionPerformedBtnTitle(ActionEvent e) {
		TitleManagerUI frame = new TitleManagerUI();
		frame.setTitle("직책 관리");
		frame.setVisible(true);
	}
	
	protected void actionPerformedBtnDepartment(ActionEvent e) {
		DepartmentManagerUI frame = new DepartmentManagerUI();
		frame.setTitle("부서 관리");
		frame.setVisible(true);
	}
	
	protected void actionPerformedBtnEmployee(ActionEvent e) {
		EmployeeManagerUI frame = new EmployeeManagerUI();
		frame.setTitle("사원 관리");
		frame.setVisible(true);
	}
}
