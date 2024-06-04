namespace KargoStockTakip
{
    partial class LoginScreenForm
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            systemUserIDTextBox = new TextBox();
            systemUserPasswordTextBox = new TextBox();
            loginButton = new Button();
            IDLabel = new Label();
            passwordLabel = new Label();
            SuspendLayout();
            // 
            // systemUserIDTextBox
            // 
            systemUserIDTextBox.Location = new Point(128, 24);
            systemUserIDTextBox.Name = "systemUserIDTextBox";
            systemUserIDTextBox.Size = new Size(221, 23);
            systemUserIDTextBox.TabIndex = 0;
            systemUserIDTextBox.TextChanged += textBox1_TextChanged;
            // 
            // systemUserPasswordTextBox
            // 
            systemUserPasswordTextBox.Location = new Point(128, 58);
            systemUserPasswordTextBox.Name = "systemUserPasswordTextBox";
            systemUserPasswordTextBox.Size = new Size(221, 23);
            systemUserPasswordTextBox.TabIndex = 1;
            // 
            // loginButton
            // 
            loginButton.Location = new Point(128, 98);
            loginButton.Name = "loginButton";
            loginButton.Size = new Size(90, 34);
            loginButton.TabIndex = 2;
            loginButton.Text = "LOGIN";
            loginButton.UseVisualStyleBackColor = true;
            loginButton.Click += button1_Click;
            // 
            // IDLabel
            // 
            IDLabel.AutoSize = true;
            IDLabel.Font = new Font("Segoe UI", 15F, FontStyle.Regular, GraphicsUnit.Point, 162);
            IDLabel.Location = new Point(82, 24);
            IDLabel.Name = "IDLabel";
            IDLabel.Size = new Size(40, 28);
            IDLabel.TabIndex = 3;
            IDLabel.Text = "ID :";
            IDLabel.TextAlign = ContentAlignment.MiddleCenter;
            // 
            // passwordLabel
            // 
            passwordLabel.AutoSize = true;
            passwordLabel.Font = new Font("Segoe UI", 15F, FontStyle.Regular, GraphicsUnit.Point, 162);
            passwordLabel.Location = new Point(20, 53);
            passwordLabel.Name = "passwordLabel";
            passwordLabel.Size = new Size(102, 28);
            passwordLabel.TabIndex = 4;
            passwordLabel.Text = "Password :";
            passwordLabel.TextAlign = ContentAlignment.MiddleCenter;
            // 
            // LoginScreenForm
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(461, 423);
            Controls.Add(passwordLabel);
            Controls.Add(IDLabel);
            Controls.Add(loginButton);
            Controls.Add(systemUserPasswordTextBox);
            Controls.Add(systemUserIDTextBox);
            Name = "LoginScreenForm";
            Text = "LOGIN SCREEN";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private TextBox systemUserIDTextBox;
        private TextBox systemUserPasswordTextBox;
        private Button loginButton;
        private Label IDLabel;
        private Label passwordLabel;
    }
}
