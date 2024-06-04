namespace KargoStockTakip
{
    partial class StockTransactionsForm
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
            stockListTable = new DataGridView();
            addStockButton = new Button();
            deleteStockButton = new Button();
            updateStockButton = new Button();
            ((System.ComponentModel.ISupportInitialize)stockListTable).BeginInit();
            SuspendLayout();
            // 
            // stockListTable
            // 
            stockListTable.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            stockListTable.Location = new Point(12, 12);
            stockListTable.Name = "stockListTable";
            stockListTable.Size = new Size(405, 618);
            stockListTable.TabIndex = 0;
            // 
            // addStockButton
            // 
            addStockButton.Location = new Point(423, 12);
            addStockButton.Name = "addStockButton";
            addStockButton.Size = new Size(128, 37);
            addStockButton.TabIndex = 1;
            addStockButton.Text = "ADD STOCK";
            addStockButton.UseVisualStyleBackColor = true;
            addStockButton.Click += button1_Click;
            // 
            // deleteStockButton
            // 
            deleteStockButton.Location = new Point(423, 55);
            deleteStockButton.Name = "deleteStockButton";
            deleteStockButton.Size = new Size(128, 37);
            deleteStockButton.TabIndex = 2;
            deleteStockButton.Text = "DELETE STOCK";
            deleteStockButton.UseVisualStyleBackColor = true;
            deleteStockButton.Click += button2_Click;
            // 
            // updateStockButton
            // 
            updateStockButton.Location = new Point(423, 99);
            updateStockButton.Name = "updateStockButton";
            updateStockButton.Size = new Size(128, 37);
            updateStockButton.TabIndex = 3;
            updateStockButton.Text = "UPDATE STOCK";
            updateStockButton.UseVisualStyleBackColor = true;
            // 
            // StockTransactionsForm
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1106, 642);
            Controls.Add(updateStockButton);
            Controls.Add(deleteStockButton);
            Controls.Add(addStockButton);
            Controls.Add(stockListTable);
            Name = "StockTransactionsForm";
            Text = "STOCK TRANSACTIONS";
            ((System.ComponentModel.ISupportInitialize)stockListTable).EndInit();
            ResumeLayout(false);
        }

        #endregion

        private DataGridView stockListTable;
        private Button addStockButton;
        private Button deleteStockButton;
        private Button updateStockButton;
    }
}