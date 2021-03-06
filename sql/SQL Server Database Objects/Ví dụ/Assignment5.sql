SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE DATABASE Assignment5
GO
USE Assignment5
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmpDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EmpDetails](
	[Emp_Id] [varchar](5) NOT NULL,
	[FirstName] [varchar](30) NULL,
	[Lastname] [varchar](30) NULL,
	[Address] [varchar](60) NULL,
	[PhoneNumber] [varchar](20) NULL,
	[Dept_Id] [varchar](4) NULL,
	[Designation] [varchar](30) NULL,
	[Salary] [money] NULL,
	[Join_date] [datetime] NULL,
	[Performance_rating] [int] NULL,
 CONSTRAINT [PK_EmpDetails] PRIMARY KEY CLUSTERED 
(
	[Emp_Id] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LeaveDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LeaveDetails](
	[Emp_Id] [varchar](5) NOT NULL,
	[LeaveTaken] [int] NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[Reason] [xml] NULL,
 CONSTRAINT [PK_LeaveDetails] PRIMARY KEY CLUSTERED 
(
	[Emp_Id] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END

GO

INSERT INTO [dbo].[EmpDetails] VALUES('M001', 'Nam', 'Tran Sy', 'Van Quan', '980840', 'Mar', 'Direct marketing', $500, '12/23/2008', 3)
INSERT INTO [dbo].[EmpDetails] VALUES('N004', 'Cong', 'Nguyen Van', 'Ba Dinh', '390293842', 'HR', 'Officer', $400, '3/21/2007', 2)
INSERT INTO [dbo].[EmpDetails] VALUES('N005', 'Tien', 'Hoang Anh', 'Phan Chu Trinh', '08304824', 'HR', 'Manager', $700, '5/2/2006', 4)
INSERT INTO [dbo].[EmpDetails] VALUES('E004', 'Manh', 'Le Tien', 'Dinh Cong', '9209234', 'PD', 'Engineer', $400, '5/5/2008', 3)
INSERT INTO [dbo].[EmpDetails] VALUES('E054', 'Binh', 'Nguyen Tat', 'Thuy Khue', '8098324', 'PD', 'Senior Engineer', $800, '12/3/2008', 4)

GO 

INSERT INTO [dbo].[LeaveDetails] VALUES('M001', 4, '1/1/2008', '2/1/2008', 'Training')
INSERT INTO [dbo].[LeaveDetails] VALUES('N004', 2, '11/1/2008', '12/1/2008', 'Negotiation')
INSERT INTO [dbo].[LeaveDetails] VALUES('N005', 3, '1/11/2008', '2/12/2008', 'Onside')
INSERT INTO [dbo].[LeaveDetails] VALUES('E004', 1, '11/4/2008', '12/5/2008', 'Training')
INSERT INTO [dbo].[LeaveDetails] VALUES('E054', 4, '1/1/2008', '2/1/2008', 'Training')