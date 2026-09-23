namespace IRSforms
{
    partial class Form1
    {
        /// <summary>
        /// Variável de designer necessária.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpar os recursos que estão sendo usados.
        /// </summary>
        /// <param name="disposing">true se for necessário descartar os recursos gerenciados; caso contrário, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código gerado pelo Windows Form Designer

        /// <summary>
        /// Método necessário para suporte ao Designer - não modifique 
        /// o conteúdo deste método com o editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.textbox_sal = new System.Windows.Forms.TextBox();
            this.btn_calcular = new System.Windows.Forms.Button();
            this.label4 = new System.Windows.Forms.Label();
            this.textbox_salliq = new System.Windows.Forms.TextBox();
            this.textbox_seg = new System.Windows.Forms.TextBox();
            this.textbox_irs = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(159, 38);
            this.label1.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(97, 20);
            this.label1.TabIndex = 0;
            this.label1.Text = "SALARIO :";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(159, 122);
            this.label2.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(80, 20);
            this.label2.TabIndex = 1;
            this.label2.Text = "IRS 15%";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(159, 152);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(134, 20);
            this.label3.TabIndex = 2;
            this.label3.Text = "SEG. SOC 12%";
            // 
            // textbox_sal
            // 
            this.textbox_sal.Location = new System.Drawing.Point(324, 38);
            this.textbox_sal.Name = "textbox_sal";
            this.textbox_sal.Size = new System.Drawing.Size(121, 26);
            this.textbox_sal.TabIndex = 3;
            // 
            // btn_calcular
            // 
            this.btn_calcular.Location = new System.Drawing.Point(324, 74);
            this.btn_calcular.Name = "btn_calcular";
            this.btn_calcular.Size = new System.Drawing.Size(121, 30);
            this.btn_calcular.TabIndex = 6;
            this.btn_calcular.Text = "CALCULAR";
            this.btn_calcular.UseVisualStyleBackColor = true;
            this.btn_calcular.Click += new System.EventHandler(this.btn_calcular_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(159, 183);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(82, 20);
            this.label4.TabIndex = 7;
            this.label4.Text = "SAL. LIQ";
            // 
            // textbox_salliq
            // 
            this.textbox_salliq.Location = new System.Drawing.Point(324, 180);
            this.textbox_salliq.Name = "textbox_salliq";
            this.textbox_salliq.Size = new System.Drawing.Size(121, 26);
            this.textbox_salliq.TabIndex = 8;
            // 
            // textbox_seg
            // 
            this.textbox_seg.Location = new System.Drawing.Point(324, 148);
            this.textbox_seg.Name = "textbox_seg";
            this.textbox_seg.Size = new System.Drawing.Size(121, 26);
            this.textbox_seg.TabIndex = 4;
            // 
            // textbox_irs
            // 
            this.textbox_irs.Location = new System.Drawing.Point(324, 116);
            this.textbox_irs.Name = "textbox_irs";
            this.textbox_irs.Size = new System.Drawing.Size(121, 26);
            this.textbox_irs.TabIndex = 5;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(10F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1333, 692);
            this.Controls.Add(this.textbox_salliq);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.btn_calcular);
            this.Controls.Add(this.textbox_irs);
            this.Controls.Add(this.textbox_seg);
            this.Controls.Add(this.textbox_sal);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Margin = new System.Windows.Forms.Padding(5, 5, 5, 5);
            this.Name = "Form1";
            this.Text = "hbup";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox textbox_sal;
        private System.Windows.Forms.Button btn_calcular;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox textbox_salliq;
        private System.Windows.Forms.TextBox textbox_seg;
        private System.Windows.Forms.TextBox textbox_irs;
    }
}

