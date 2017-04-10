USE [QuanLiGiaoVienTHPT]
GO

/****** Object:  Table [dbo].[GiaoVien]    Script Date: 3/14/2017 3:23:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE alter TABLE [dbo].[GiaoVien](
	[ma] [varchar](50) NOT NULL,
	[tenGV] [nvarchar](50) NULL,
	[gioitinh] [smallint] NULL,
	[ngaysinh] [date] NULL,
	[quequan] [nvarchar](50) NULL,
	[bomonma] [varchar](50) NULL,
	[hesoluong] [int] NULL,
	[chucvu] [varchar](50) NULL,
	[sodt] [varchar](11) NULL,
	[mongiangday] [nvarchar](50) NULL,
	[trinhdo] [nvarchar](50) NULL,
	[matkhau] [varchar](200) NULL,
 CONSTRAINT [PK_GiaoVien] PRIMARY KEY CLUSTERED )
 go
(
	[ma] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_bomon] FOREIGN KEY([bomonma])
REFERENCES [dbo].[bomon] ([ma])
GO

ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK_GiaoVien_bomon]
GO

ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_ChucVu] FOREIGN KEY([chucvu])
REFERENCES [dbo].[ChucVu] ([ma])
GO

ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK_GiaoVien_ChucVu]
GO


