
namespace KargoStockTakip
{
    partial class ManagerScreenForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
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
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            managerTabControl = new TabControl();
            stockTransactionsTab = new TabPage();
            updateButtonManager = new Button();
            deleteButtonManager = new Button();
            addStockButtonManager = new Button();
            stockListTableManager = new DataGridView();
            staffTransactionsTab = new TabPage();
            updateStuffButton = new Button();
            deleteStuffButton = new Button();
            addStuffButton = new Button();
            dataGridView1 = new DataGridView();
            managerTabControl.SuspendLayout();
            stockTransactionsTab.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)stockListTableManager).BeginInit();
            staffTransactionsTab.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)dataGridView1).BeginInit();
            SuspendLayout();
            // 
            // managerTabControl
            // 
            managerTabControl.Controls.Add(stockTransactionsTab);
            managerTabControl.Controls.Add(staffTransactionsTab);
            managerTabControl.Location = new Point(12, 12);
            managerTabControl.Name = "managerTabControl";
            managerTabControl.SelectedIndex = 0;
            managerTabControl.Size = new Size(1085, 616);
            managerTabControl.TabIndex = 0;
            // 
            // stockTransactionsTab
            // 
            stockTransactionsTab.Controls.Add(updateButtonManager);
            stockTransactionsTab.Controls.Add(deleteButtonManager);
            stockTransactionsTab.Controls.Add(addStockButtonManager);
            stockTransactionsTab.Controls.Add(stockListTableManager);
            stockTransactionsTab.Location = new Point(4, 24);
            stockTransactionsTab.Name = "stockTransactionsTab";
            stockTransactionsTab.Padding = new Padding(3);
            stockTransactionsTab.Size = new Size(1077, 588);
            stockTransactionsTab.TabIndex = 0;
            stockTransactionsTab.Text = "Stock Transactions";
            stockTransactionsTab.UseVisualStyleBackColor = true;
            // 
            // updateButtonManager
            // 
            updateButtonManager.Location = new Point(368, 92);
            updateButtonManager.Name = "updateButtonManager";
            updateButtonManager.Size = new Size(100, 37);
            updateButtonManager.TabIndex = 3;
            updateButtonManager.Text = "UPDATE STOCK";
            updateButtonManager.UseVisualStyleBackColor = true;
            // 
            // deleteButtonManager
            // 
            deleteButtonManager.Location = new Point(368, 49);
            deleteButtonManager.Name = "deleteButtonManager";
            deleteButtonManager.Size = new Size(100, 37);
            deleteButtonManager.TabIndex = 2;
            deleteButtonManager.Text = "DELETE STOCK";
            deleteButtonManager.UseVisualStyleBackColor = true;
            // 
            // addStockButtonManager
            // 
            addStockButtonManager.Location = new Point(368, 6);
            addStockButtonManager.Name = "addStockButtonManager";
            addStockButtonManager.Size = new Size(100, 37);
            addStockButtonManager.TabIndex = 1;
            addStockButtonManager.Text = "ADD STOCK";
            addStockButtonManager.UseVisualStyleBackColor = true;
            addStockButtonManager.Click += addStockButtonManager_Click;
            // 
            // stockListTableManager
            // 
            stockListTableManager.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            stockListTableManager.Location = new Point(6, 6);
            stockListTableManager.Name = "stockListTableManager";
            stockListTableManager.Size = new Size(356, 576);
            stockListTableManager.TabIndex = 0;
            // 
            // staffTransactionsTab
            // 
            staffTransactionsTab.Controls.Add(updateStuffButton);
            staffTransactionsTab.Controls.Add(deleteStuffButton);
            staffTransactionsTab.Controls.Add(addStuffButton);
            staffTransactionsTab.Controls.Add(dataGridView1);
            staffTransactionsTab.Location = new Point(4, 24);
            staffTransactionsTab.Name = "staffTransactionsTab";
            staffTransactionsTab.Padding = new Padding(3);
            staffTransactionsTab.Size = new Size(1077, 588);
            staffTransactionsTab.TabIndex = 1;
            staffTransactionsTab.Text = "Staff Transactions";
            staffTransactionsTab.UseVisualStyleBackColor = true;
            // 
            // updateStuffButton
            // 
            updateStuffButton.Location = new Point(368, 92);
            updateStuffButton.Name = "updateStuffButton";
            updateStuffButton.Size = new Size(100, 37);
            updateStuffButton.TabIndex = 3;
            updateStuffButton.Text = "UPDATE STUFF";
            updateStuffButton.UseVisualStyleBackColor = true;
            updateStuffButton.Click += button3_Click;
            // 
            // deleteStuffButton
            // 
            deleteStuffButton.Location = new Point(368, 49);
            deleteStuffButton.Name = "deleteStuffButton";
            deleteStuffButton.Size = new Size(100, 37);
            deleteStuffButton.TabIndex = 2;
            deleteStuffButton.Text = "DELETE STUFF";
            deleteStuffButton.UseVisualStyleBackColor = true;
            deleteStuffButton.Click += deleteStuffButton_Click;
            // 
            // addStuffButton
            // 
            addStuffButton.Location = new Point(368, 6);
            addStuffButton.Name = "addStuffButton";
            addStuffButton.Size = new Size(100, 37);
            addStuffButton.TabIndex = 1;
            addStuffButton.Text = "ADD STUFF";
            addStuffButton.UseVisualStyleBackColor = true;
            addStuffButton.Click += button1_Click;
            // 
            // dataGridView1
            // 
            dataGridView1.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridView1.Location = new Point(6, 6);
            dataGridView1.Name = "dataGridView1";
            dataGridView1.Size = new Size(356, 576);
            dataGridView1.TabIndex = 0;
            // 
            // ManagerScreenForm
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1109, 640);
            Controls.Add(managerTabControl);
            Name = "ManagerScreenForm";
            Text = "MANAGER SCREEN";
            managerTabControl.ResumeLayout(false);
            stockTransactionsTab.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)stockListTableManager).EndInit();
            staffTransactionsTab.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)dataGridView1).EndInit();
            ResumeLayout(false);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }

        private void addStockButtonManager_Click(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }

        #endregion

        private TabControl managerTabControl;
        private TabPage stockTransactionsTab;
        private TabPage staffTransactionsTab;
        private Button updateButtonManager;
        private Button deleteButtonManager;
        private Button addStockButtonManager;
        private DataGridView stockListTableManager;
        private Button updateStuffButton;
        private Button deleteStuffButton;
        private Button addStuffButton;
        private DataGridView dataGridView1;
    }
}