USE [SMS]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 3/14/2025 4:45:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[SysId] [int] IDENTITY(1,1) NOT NULL,
	[TeacherID] [int] NULL,
	[StudentID] [int] NULL,
	[Password] [nvarchar](200) NULL,
	[RoleID] [int] NULL,
	[CreatedBy] [int] NULL,
	[IsDeleted] [int] NULL,
	[Salt] [nvarchar](200) NULL,
	[FinanceId] [int] NOT NULL,
	[Finance_sysID] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[SysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assesments]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assesments](
	[SysId] [int] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](50) NULL,
	[Type] [int] NULL,
	[Time] [time](7) NULL,
	[GivenDate] [datetime] NULL,
	[DeadLine] [datetime] NULL,
	[SectionID] [int] NULL,
	[DepartmentID] [int] NULL,
	[CourseID] [int] NULL,
	[YearID] [int] NULL,
	[Title] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[TotalMark] [nvarchar](50) NULL,
	[CreatedBy] [int] NULL,
	[IsDeleted] [int] NOT NULL,
	[Attachment] [nvarchar](200) NULL,
 CONSTRAINT [PK_Assesments] PRIMARY KEY CLUSTERED 
(
	[SysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AssesmentTypes]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssesmentTypes](
	[SysId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_AssesmentTypes] PRIMARY KEY CLUSTERED 
(
	[SysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attachments]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attachments](
	[AttachmentId] [int] IDENTITY(1,1) NOT NULL,
	[MessageId] [int] NULL,
	[FileName] [nvarchar](255) NOT NULL,
	[FileType] [nvarchar](100) NOT NULL,
	[FileSize] [int] NOT NULL,
	[FilePath] [nvarchar](500) NOT NULL,
	[FileData] [varbinary](max) NULL,
	[UploadedDate] [datetime] NULL,
	[sysID] [nchar](10) NULL,
 CONSTRAINT [PK_Attachments] PRIMARY KEY CLUSTERED 
(
	[AttachmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Auditors]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auditors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Phone] [nvarchar](50) NULL,
	[Role] [nvarchar](100) NULL,
	[sysID] [nchar](10) NULL,
	[AttachmentAttachmentId] [int] NOT NULL,
 CONSTRAINT [PK_Auditors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Calls]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calls](
	[CallID] [int] IDENTITY(1,1) NOT NULL,
	[CallerID] [int] NOT NULL,
	[ReceiverID] [int] NOT NULL,
	[CallType] [nvarchar](10) NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[CallStatus] [nvarchar](10) NULL,
	[sysID] [nchar](10) NULL,
	[Role] [nchar](100) NULL,
	[FinanceId] [int] NOT NULL,
	[Finance_sysID] [nchar](10) NOT NULL,
	[AuditorId] [int] NOT NULL,
 CONSTRAINT [PK_Calls] PRIMARY KEY CLUSTERED 
(
	[CallID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[SysId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[YearId] [int] NULL,
	[CreatedBy] [int] NULL,
	[IsDeleted] [int] NULL,
	[DepartmentID] [int] NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[SysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[SysId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[FinanceId] [int] NOT NULL,
	[Finance_sysID] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[SysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[PhoneNumber] [nvarchar](20) NULL,
	[DepartmentId] [int] NULL,
	[Position] [nvarchar](100) NOT NULL,
	[Salary] [decimal](10, 2) NULL,
	[HireDate] [datetime] NOT NULL,
	[CreatedAt] [datetime] NULL,
	[UpdatedAt] [datetime] NULL,
	[sys_Id] [nchar](10) NULL,
	[FinanceId] [int] NOT NULL,
	[Finance_sysID] [nchar](10) NOT NULL,
	[AuditorId] [int] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FileTransfers]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FileTransfers](
	[FileID] [int] IDENTITY(1,1) NOT NULL,
	[SenderID] [int] NOT NULL,
	[ReceiverID] [int] NOT NULL,
	[FileName] [nvarchar](255) NULL,
	[FilePath] [nvarchar](max) NULL,
	[FileSize] [int] NULL,
	[UploadDate] [datetime] NULL,
	[sysID] [nchar](10) NULL,
	[Role] [nchar](100) NULL,
	[FinanceId] [int] NOT NULL,
	[Finance_sysID] [nchar](10) NOT NULL,
	[AuditorId] [int] NOT NULL,
 CONSTRAINT [PK_FileTransfers] PRIMARY KEY CLUSTERED 
(
	[FileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinanceAuditor]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinanceAuditor](
	[Finances_Id] [int] NOT NULL,
	[Finances_sysID] [nchar](10) NOT NULL,
	[Auditors_Id] [int] NOT NULL,
 CONSTRAINT [PK_FinanceAuditor] PRIMARY KEY CLUSTERED 
(
	[Finances_Id] ASC,
	[Finances_sysID] ASC,
	[Auditors_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinanceInventory]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinanceInventory](
	[Finances_Id] [int] NOT NULL,
	[Finances_sysID] [nchar](10) NOT NULL,
	[Inventories_Id] [int] NOT NULL,
 CONSTRAINT [PK_FinanceInventory] PRIMARY KEY CLUSTERED 
(
	[Finances_Id] ASC,
	[Finances_sysID] ASC,
	[Inventories_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Finances]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Finances](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Phone] [nvarchar](50) NULL,
	[Role] [nvarchar](100) NULL,
	[sysID] [nchar](10) NOT NULL,
	[AttachmentAttachmentId] [int] NOT NULL,
	[RoleSysId] [int] NOT NULL,
 CONSTRAINT [PK_Finances] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[sysID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinanceSuperAdmin]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinanceSuperAdmin](
	[Finances_Id] [int] NOT NULL,
	[Finances_sysID] [nchar](10) NOT NULL,
	[SuperAdmins_SysId] [int] NOT NULL,
 CONSTRAINT [PK_FinanceSuperAdmin] PRIMARY KEY CLUSTERED 
(
	[Finances_Id] ASC,
	[Finances_sysID] ASC,
	[SuperAdmins_SysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinanceTeach]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinanceTeach](
	[Finances_Id] [int] NOT NULL,
	[Finances_sysID] [nchar](10) NOT NULL,
	[Teaches_SysId] [int] NOT NULL,
 CONSTRAINT [PK_FinanceTeach] PRIMARY KEY CLUSTERED 
(
	[Finances_Id] ASC,
	[Finances_sysID] ASC,
	[Teaches_SysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinanceYear1]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinanceYear1](
	[Finances_Id] [int] NOT NULL,
	[Finances_sysID] [nchar](10) NOT NULL,
	[Years1_SysId] [int] NOT NULL,
 CONSTRAINT [PK_FinanceYear1] PRIMARY KEY CLUSTERED 
(
	[Finances_Id] ASC,
	[Finances_sysID] ASC,
	[Years1_SysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HRMs]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HRMs](
	[sysID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Phone] [nvarchar](50) NULL,
	[Role] [nvarchar](100) NULL,
	[User] [nchar](100) NULL,
	[FinanceId] [int] NOT NULL,
	[Finance_sysID] [nchar](10) NOT NULL,
	[AttachmentAttachmentId] [int] NOT NULL,
	[AuditorId] [int] NOT NULL,
 CONSTRAINT [PK_HRMs] PRIMARY KEY CLUSTERED 
(
	[sysID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ICTs]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ICTs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Phone] [nvarchar](50) NULL,
	[Role] [nvarchar](100) NULL,
	[sysID] [nchar](10) NULL,
	[FinanceId] [int] NOT NULL,
	[Finance_sysID] [nchar](10) NOT NULL,
	[AttachmentAttachmentId] [int] NOT NULL,
	[AuditorId] [int] NOT NULL,
 CONSTRAINT [PK_ICTs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventories]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Phone] [nvarchar](50) NULL,
	[Role] [nvarchar](100) NULL,
	[sysID] [nchar](10) NULL,
	[AttachmentAttachmentId] [int] NOT NULL,
	[RoleSysId] [int] NOT NULL,
 CONSTRAINT [PK_Inventories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lawyers]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lawyers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Phone] [nvarchar](50) NULL,
	[Role] [nvarchar](100) NULL,
	[sysID] [nchar](10) NOT NULL,
	[FinanceId] [int] NOT NULL,
	[Finance_sysID] [nchar](10) NOT NULL,
	[AttachmentAttachmentId] [int] NOT NULL,
	[RoleSysId] [int] NOT NULL,
 CONSTRAINT [PK_Lawyers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[sysID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LegalOfficers]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LegalOfficers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Phone] [nvarchar](50) NULL,
	[Role] [nvarchar](100) NULL,
	[sysID] [nchar](10) NULL,
	[FinanceId] [int] NOT NULL,
	[Finance_sysID] [nchar](10) NOT NULL,
	[AttachmentAttachmentId] [int] NOT NULL,
	[RoleSysId] [int] NOT NULL,
 CONSTRAINT [PK_LegalOfficers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuItems]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuItems](
	[SysId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Link] [nvarchar](100) NULL,
	[Icon] [nvarchar](50) NULL,
	[FinanceId] [int] NOT NULL,
	[Finance_sysID] [nchar](10) NOT NULL,
	[AttachmentAttachmentId] [int] NOT NULL,
 CONSTRAINT [PK_MenuItems] PRIMARY KEY CLUSTERED 
(
	[SysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message1]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message1](
	[MessageID] [int] IDENTITY(1,1) NOT NULL,
	[SenderID] [int] NOT NULL,
	[ReceiverID] [int] NOT NULL,
	[MessageText] [nvarchar](max) NULL,
	[Timestamp] [datetime] NULL,
	[IsRead] [bit] NULL,
	[sysID] [nchar](10) NULL,
 CONSTRAINT [PK_Message1] PRIMARY KEY CLUSTERED 
(
	[MessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[SysId] [int] IDENTITY(1,1) NOT NULL,
	[From] [nvarchar](50) NULL,
	[ToStudents] [int] NULL,
	[ToTeachers] [int] NULL,
	[Subject] [nvarchar](200) NULL,
	[Body] [nvarchar](max) NULL,
	[Status] [int] NULL,
	[SentDate] [datetime] NULL,
	[IsDeleted] [int] NULL,
	[Attachment] [int] NULL,
	[Sender] [nvarchar](100) NULL,
	[Outbox] [nvarchar](100) NULL,
	[draft] [nvarchar](100) NULL,
	[Receiver] [nvarchar](100) NULL,
	[Audio] [nvarchar](100) NULL,
	[Video] [nvarchar](100) NULL,
	[MessageText] [nvarchar](max) NULL,
	[FinanceId] [int] NOT NULL,
	[Finance_sysID] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[SysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Results]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Results](
	[SysId] [int] IDENTITY(1,1) NOT NULL,
	[AssessmentID] [int] NULL,
	[StudentID] [int] NULL,
	[Mark] [nvarchar](50) NULL,
	[CreatedBy] [int] NULL,
	[IsDeleted] [int] NULL,
 CONSTRAINT [PK_Results] PRIMARY KEY CLUSTERED 
(
	[SysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleICT]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleICT](
	[Roles_SysId] [int] NOT NULL,
	[ICTs_Id] [int] NOT NULL,
 CONSTRAINT [PK_RoleICT] PRIMARY KEY CLUSTERED 
(
	[Roles_SysId] ASC,
	[ICTs_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleICT1]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleICT1](
	[Roles1_SysId] [int] NOT NULL,
	[ICTs1_Id] [int] NOT NULL,
 CONSTRAINT [PK_RoleICT1] PRIMARY KEY CLUSTERED 
(
	[Roles1_SysId] ASC,
	[ICTs1_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleMenus]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleMenus](
	[SysId] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NULL,
	[MenuId] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [int] NULL,
	[FinanceId] [int] NOT NULL,
	[Finance_sysID] [nchar](10) NOT NULL,
 CONSTRAINT [PK_RoleMenus] PRIMARY KEY CLUSTERED 
(
	[SysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[SysId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[FinanceId] [int] NOT NULL,
	[Finance_sysID] [nchar](10) NOT NULL,
	[AuditorId] [int] NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[SysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sections]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sections](
	[SysId] [int] IDENTITY(1,1) NOT NULL,
	[Value] [nvarchar](50) NULL,
	[YearId] [int] NULL,
	[CreatedBy] [int] NULL,
	[IsDeleted] [int] NULL,
 CONSTRAINT [PK_Sections] PRIMARY KEY CLUSTERED 
(
	[SysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[SysId] [int] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[FullName] [nvarchar](101) NULL,
	[UserName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[SectionID] [int] NULL,
	[YearID] [int] NULL,
	[CreatedBy] [int] NULL,
	[IsDeleted] [int] NULL,
	[Role] [int] NULL,
	[Photo] [nvarchar](50) NULL,
	[DepartmentID] [int] NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[SysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubmitAssignments]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubmitAssignments](
	[SysId] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NULL,
	[AssesmentId] [int] NULL,
	[FilePath] [nvarchar](150) NULL,
	[SubmissionDate] [datetime] NULL,
 CONSTRAINT [PK_SubmitAssignments] PRIMARY KEY CLUSTERED 
(
	[SysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SuperAdmins]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuperAdmins](
	[SysId] [int] NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[IsDeleted] [int] NULL,
 CONSTRAINT [PK_SuperAdmins] PRIMARY KEY CLUSTERED 
(
	[SysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sysdiagrams]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysdiagrams](
	[name] [nvarchar](128) NOT NULL,
	[principal_id] [int] NOT NULL,
	[diagram_id] [int] IDENTITY(1,1) NOT NULL,
	[version] [int] NULL,
	[definition] [varbinary](max) NULL,
 CONSTRAINT [PK_sysdiagrams] PRIMARY KEY CLUSTERED 
(
	[diagram_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[SysId] [int] IDENTITY(1,1) NOT NULL,
	[Id] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[FullName] [nvarchar](101) NULL,
	[Email] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[IsDeleted] [int] NULL,
	[Role] [int] NULL,
	[Photo] [nvarchar](250) NULL,
	[Password] [nvarchar](200) NULL,
	[FinanceId] [int] NOT NULL,
	[Finance_sysID] [nchar](10) NOT NULL,
	[AttachmentAttachmentId] [int] NOT NULL,
 CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED 
(
	[SysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teaches]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teaches](
	[SysId] [int] IDENTITY(1,1) NOT NULL,
	[TeacherId] [int] NULL,
	[CourseId] [int] NULL,
	[DepartmentId] [int] NULL,
	[YearId] [int] NULL,
	[SectionId] [int] NULL,
	[AttachmentAttachmentId] [int] NOT NULL,
	[AttachmentAttachmentId1] [int] NOT NULL,
	[RoleSysId] [int] NOT NULL,
 CONSTRAINT [PK_Teaches] PRIMARY KEY CLUSTERED 
(
	[SysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[PasswordHash] [nvarchar](255) NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
	[CreatedAt] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Years]    Script Date: 3/14/2025 4:45:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Years](
	[SysId] [int] IDENTITY(1,1) NOT NULL,
	[Value] [nvarchar](50) NULL,
	[CreatedBy] [int] NULL,
	[IsDeleted] [int] NULL,
	[FinanceId] [int] NOT NULL,
	[Finance_sysID] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Years] PRIMARY KEY CLUSTERED 
(
	[SysId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users] ADD  DEFAULT (getdate()) FOR [CreatedAt]
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([SysId])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Account_Role]
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Account_Students] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([SysId])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Account_Students]
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_Account_Teachers] FOREIGN KEY([TeacherID])
REFERENCES [dbo].[Teachers] ([SysId])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_Account_Teachers]
GO
ALTER TABLE [dbo].[Accounts]  WITH CHECK ADD  CONSTRAINT [FK_FinanceAccount] FOREIGN KEY([FinanceId], [Finance_sysID])
REFERENCES [dbo].[Finances] ([Id], [sysID])
GO
ALTER TABLE [dbo].[Accounts] CHECK CONSTRAINT [FK_FinanceAccount]
GO
ALTER TABLE [dbo].[Assesments]  WITH CHECK ADD  CONSTRAINT [FK_Assesment_AssasementTypes] FOREIGN KEY([Type])
REFERENCES [dbo].[AssesmentTypes] ([SysId])
GO
ALTER TABLE [dbo].[Assesments] CHECK CONSTRAINT [FK_Assesment_AssasementTypes]
GO
ALTER TABLE [dbo].[Assesments]  WITH CHECK ADD  CONSTRAINT [FK_Assesment_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([SysId])
GO
ALTER TABLE [dbo].[Assesments] CHECK CONSTRAINT [FK_Assesment_Course]
GO
ALTER TABLE [dbo].[Assesments]  WITH CHECK ADD  CONSTRAINT [FK_Assesment_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Departments] ([SysId])
GO
ALTER TABLE [dbo].[Assesments] CHECK CONSTRAINT [FK_Assesment_Department]
GO
ALTER TABLE [dbo].[Assesments]  WITH CHECK ADD  CONSTRAINT [FK_Assesment_Sections] FOREIGN KEY([SectionID])
REFERENCES [dbo].[Sections] ([SysId])
GO
ALTER TABLE [dbo].[Assesments] CHECK CONSTRAINT [FK_Assesment_Sections]
GO
ALTER TABLE [dbo].[Assesments]  WITH CHECK ADD  CONSTRAINT [FK_Assesment_Teachers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Teachers] ([SysId])
GO
ALTER TABLE [dbo].[Assesments] CHECK CONSTRAINT [FK_Assesment_Teachers]
GO
ALTER TABLE [dbo].[Assesments]  WITH CHECK ADD  CONSTRAINT [FK_Assesment_Year] FOREIGN KEY([YearID])
REFERENCES [dbo].[Years] ([SysId])
GO
ALTER TABLE [dbo].[Assesments] CHECK CONSTRAINT [FK_Assesment_Year]
GO
ALTER TABLE [dbo].[Attachments]  WITH CHECK ADD  CONSTRAINT [FK_Attachments_Messages] FOREIGN KEY([MessageId])
REFERENCES [dbo].[Messages] ([SysId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Attachments] CHECK CONSTRAINT [FK_Attachments_Messages]
GO
ALTER TABLE [dbo].[Auditors]  WITH CHECK ADD  CONSTRAINT [FK_AttachmentAuditor] FOREIGN KEY([AttachmentAttachmentId])
REFERENCES [dbo].[Attachments] ([AttachmentId])
GO
ALTER TABLE [dbo].[Auditors] CHECK CONSTRAINT [FK_AttachmentAuditor]
GO
ALTER TABLE [dbo].[Calls]  WITH CHECK ADD  CONSTRAINT [FK_AuditorCall] FOREIGN KEY([AuditorId])
REFERENCES [dbo].[Auditors] ([Id])
GO
ALTER TABLE [dbo].[Calls] CHECK CONSTRAINT [FK_AuditorCall]
GO
ALTER TABLE [dbo].[Calls]  WITH CHECK ADD  CONSTRAINT [FK_FinanceCall] FOREIGN KEY([FinanceId], [Finance_sysID])
REFERENCES [dbo].[Finances] ([Id], [sysID])
GO
ALTER TABLE [dbo].[Calls] CHECK CONSTRAINT [FK_FinanceCall]
GO
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Course_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Departments] ([SysId])
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Course_Department]
GO
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Course_Teachers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Teachers] ([SysId])
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Course_Teachers]
GO
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Subjects_Year] FOREIGN KEY([YearId])
REFERENCES [dbo].[Years] ([SysId])
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Subjects_Year]
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [FK_FinanceDepartment] FOREIGN KEY([FinanceId], [Finance_sysID])
REFERENCES [dbo].[Finances] ([Id], [sysID])
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [FK_FinanceDepartment]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_AuditorEmployee] FOREIGN KEY([AuditorId])
REFERENCES [dbo].[Auditors] ([Id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_AuditorEmployee]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_FinanceEmployee] FOREIGN KEY([FinanceId], [Finance_sysID])
REFERENCES [dbo].[Finances] ([Id], [sysID])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_FinanceEmployee]
GO
ALTER TABLE [dbo].[FileTransfers]  WITH CHECK ADD  CONSTRAINT [FK_AuditorFileTransfer] FOREIGN KEY([AuditorId])
REFERENCES [dbo].[Auditors] ([Id])
GO
ALTER TABLE [dbo].[FileTransfers] CHECK CONSTRAINT [FK_AuditorFileTransfer]
GO
ALTER TABLE [dbo].[FileTransfers]  WITH CHECK ADD  CONSTRAINT [FK_FinanceFileTransfer] FOREIGN KEY([FinanceId], [Finance_sysID])
REFERENCES [dbo].[Finances] ([Id], [sysID])
GO
ALTER TABLE [dbo].[FileTransfers] CHECK CONSTRAINT [FK_FinanceFileTransfer]
GO
ALTER TABLE [dbo].[FinanceAuditor]  WITH CHECK ADD  CONSTRAINT [FK_FinanceAuditor_Auditor] FOREIGN KEY([Auditors_Id])
REFERENCES [dbo].[Auditors] ([Id])
GO
ALTER TABLE [dbo].[FinanceAuditor] CHECK CONSTRAINT [FK_FinanceAuditor_Auditor]
GO
ALTER TABLE [dbo].[FinanceAuditor]  WITH CHECK ADD  CONSTRAINT [FK_FinanceAuditor_Finance] FOREIGN KEY([Finances_Id], [Finances_sysID])
REFERENCES [dbo].[Finances] ([Id], [sysID])
GO
ALTER TABLE [dbo].[FinanceAuditor] CHECK CONSTRAINT [FK_FinanceAuditor_Finance]
GO
ALTER TABLE [dbo].[FinanceInventory]  WITH CHECK ADD  CONSTRAINT [FK_FinanceInventory_Finance] FOREIGN KEY([Finances_Id], [Finances_sysID])
REFERENCES [dbo].[Finances] ([Id], [sysID])
GO
ALTER TABLE [dbo].[FinanceInventory] CHECK CONSTRAINT [FK_FinanceInventory_Finance]
GO
ALTER TABLE [dbo].[FinanceInventory]  WITH CHECK ADD  CONSTRAINT [FK_FinanceInventory_Inventory] FOREIGN KEY([Inventories_Id])
REFERENCES [dbo].[Inventories] ([Id])
GO
ALTER TABLE [dbo].[FinanceInventory] CHECK CONSTRAINT [FK_FinanceInventory_Inventory]
GO
ALTER TABLE [dbo].[Finances]  WITH CHECK ADD  CONSTRAINT [FK_AttachmentFinance] FOREIGN KEY([AttachmentAttachmentId])
REFERENCES [dbo].[Attachments] ([AttachmentId])
GO
ALTER TABLE [dbo].[Finances] CHECK CONSTRAINT [FK_AttachmentFinance]
GO
ALTER TABLE [dbo].[Finances]  WITH CHECK ADD  CONSTRAINT [FK_RoleFinance] FOREIGN KEY([RoleSysId])
REFERENCES [dbo].[Roles] ([SysId])
GO
ALTER TABLE [dbo].[Finances] CHECK CONSTRAINT [FK_RoleFinance]
GO
ALTER TABLE [dbo].[FinanceSuperAdmin]  WITH CHECK ADD  CONSTRAINT [FK_FinanceSuperAdmin_Finance] FOREIGN KEY([Finances_Id], [Finances_sysID])
REFERENCES [dbo].[Finances] ([Id], [sysID])
GO
ALTER TABLE [dbo].[FinanceSuperAdmin] CHECK CONSTRAINT [FK_FinanceSuperAdmin_Finance]
GO
ALTER TABLE [dbo].[FinanceSuperAdmin]  WITH CHECK ADD  CONSTRAINT [FK_FinanceSuperAdmin_SuperAdmin] FOREIGN KEY([SuperAdmins_SysId])
REFERENCES [dbo].[SuperAdmins] ([SysId])
GO
ALTER TABLE [dbo].[FinanceSuperAdmin] CHECK CONSTRAINT [FK_FinanceSuperAdmin_SuperAdmin]
GO
ALTER TABLE [dbo].[FinanceTeach]  WITH CHECK ADD  CONSTRAINT [FK_FinanceTeach_Finance] FOREIGN KEY([Finances_Id], [Finances_sysID])
REFERENCES [dbo].[Finances] ([Id], [sysID])
GO
ALTER TABLE [dbo].[FinanceTeach] CHECK CONSTRAINT [FK_FinanceTeach_Finance]
GO
ALTER TABLE [dbo].[FinanceTeach]  WITH CHECK ADD  CONSTRAINT [FK_FinanceTeach_Teach] FOREIGN KEY([Teaches_SysId])
REFERENCES [dbo].[Teaches] ([SysId])
GO
ALTER TABLE [dbo].[FinanceTeach] CHECK CONSTRAINT [FK_FinanceTeach_Teach]
GO
ALTER TABLE [dbo].[FinanceYear1]  WITH CHECK ADD  CONSTRAINT [FK_FinanceYear1_Finance] FOREIGN KEY([Finances_Id], [Finances_sysID])
REFERENCES [dbo].[Finances] ([Id], [sysID])
GO
ALTER TABLE [dbo].[FinanceYear1] CHECK CONSTRAINT [FK_FinanceYear1_Finance]
GO
ALTER TABLE [dbo].[FinanceYear1]  WITH CHECK ADD  CONSTRAINT [FK_FinanceYear1_Year] FOREIGN KEY([Years1_SysId])
REFERENCES [dbo].[Years] ([SysId])
GO
ALTER TABLE [dbo].[FinanceYear1] CHECK CONSTRAINT [FK_FinanceYear1_Year]
GO
ALTER TABLE [dbo].[HRMs]  WITH CHECK ADD  CONSTRAINT [FK_AttachmentHRM] FOREIGN KEY([AttachmentAttachmentId])
REFERENCES [dbo].[Attachments] ([AttachmentId])
GO
ALTER TABLE [dbo].[HRMs] CHECK CONSTRAINT [FK_AttachmentHRM]
GO
ALTER TABLE [dbo].[HRMs]  WITH CHECK ADD  CONSTRAINT [FK_AuditorHRM] FOREIGN KEY([AuditorId])
REFERENCES [dbo].[Auditors] ([Id])
GO
ALTER TABLE [dbo].[HRMs] CHECK CONSTRAINT [FK_AuditorHRM]
GO
ALTER TABLE [dbo].[HRMs]  WITH CHECK ADD  CONSTRAINT [FK_FinanceHRM] FOREIGN KEY([FinanceId], [Finance_sysID])
REFERENCES [dbo].[Finances] ([Id], [sysID])
GO
ALTER TABLE [dbo].[HRMs] CHECK CONSTRAINT [FK_FinanceHRM]
GO
ALTER TABLE [dbo].[ICTs]  WITH CHECK ADD  CONSTRAINT [FK_AttachmentICT] FOREIGN KEY([AttachmentAttachmentId])
REFERENCES [dbo].[Attachments] ([AttachmentId])
GO
ALTER TABLE [dbo].[ICTs] CHECK CONSTRAINT [FK_AttachmentICT]
GO
ALTER TABLE [dbo].[ICTs]  WITH CHECK ADD  CONSTRAINT [FK_AuditorICT] FOREIGN KEY([AuditorId])
REFERENCES [dbo].[Auditors] ([Id])
GO
ALTER TABLE [dbo].[ICTs] CHECK CONSTRAINT [FK_AuditorICT]
GO
ALTER TABLE [dbo].[ICTs]  WITH CHECK ADD  CONSTRAINT [FK_FinanceICT] FOREIGN KEY([FinanceId], [Finance_sysID])
REFERENCES [dbo].[Finances] ([Id], [sysID])
GO
ALTER TABLE [dbo].[ICTs] CHECK CONSTRAINT [FK_FinanceICT]
GO
ALTER TABLE [dbo].[Inventories]  WITH CHECK ADD  CONSTRAINT [FK_AttachmentInventory] FOREIGN KEY([AttachmentAttachmentId])
REFERENCES [dbo].[Attachments] ([AttachmentId])
GO
ALTER TABLE [dbo].[Inventories] CHECK CONSTRAINT [FK_AttachmentInventory]
GO
ALTER TABLE [dbo].[Inventories]  WITH CHECK ADD  CONSTRAINT [FK_RoleInventory] FOREIGN KEY([RoleSysId])
REFERENCES [dbo].[Roles] ([SysId])
GO
ALTER TABLE [dbo].[Inventories] CHECK CONSTRAINT [FK_RoleInventory]
GO
ALTER TABLE [dbo].[Lawyers]  WITH CHECK ADD  CONSTRAINT [FK_AttachmentLawyer] FOREIGN KEY([AttachmentAttachmentId])
REFERENCES [dbo].[Attachments] ([AttachmentId])
GO
ALTER TABLE [dbo].[Lawyers] CHECK CONSTRAINT [FK_AttachmentLawyer]
GO
ALTER TABLE [dbo].[Lawyers]  WITH CHECK ADD  CONSTRAINT [FK_FinanceLawyer] FOREIGN KEY([FinanceId], [Finance_sysID])
REFERENCES [dbo].[Finances] ([Id], [sysID])
GO
ALTER TABLE [dbo].[Lawyers] CHECK CONSTRAINT [FK_FinanceLawyer]
GO
ALTER TABLE [dbo].[Lawyers]  WITH CHECK ADD  CONSTRAINT [FK_RoleLawyer] FOREIGN KEY([RoleSysId])
REFERENCES [dbo].[Roles] ([SysId])
GO
ALTER TABLE [dbo].[Lawyers] CHECK CONSTRAINT [FK_RoleLawyer]
GO
ALTER TABLE [dbo].[LegalOfficers]  WITH CHECK ADD  CONSTRAINT [FK_AttachmentLegalOfficer] FOREIGN KEY([AttachmentAttachmentId])
REFERENCES [dbo].[Attachments] ([AttachmentId])
GO
ALTER TABLE [dbo].[LegalOfficers] CHECK CONSTRAINT [FK_AttachmentLegalOfficer]
GO
ALTER TABLE [dbo].[LegalOfficers]  WITH CHECK ADD  CONSTRAINT [FK_FinanceLegalOfficer] FOREIGN KEY([FinanceId], [Finance_sysID])
REFERENCES [dbo].[Finances] ([Id], [sysID])
GO
ALTER TABLE [dbo].[LegalOfficers] CHECK CONSTRAINT [FK_FinanceLegalOfficer]
GO
ALTER TABLE [dbo].[LegalOfficers]  WITH CHECK ADD  CONSTRAINT [FK_RoleLegalOfficer] FOREIGN KEY([RoleSysId])
REFERENCES [dbo].[Roles] ([SysId])
GO
ALTER TABLE [dbo].[LegalOfficers] CHECK CONSTRAINT [FK_RoleLegalOfficer]
GO
ALTER TABLE [dbo].[MenuItems]  WITH CHECK ADD  CONSTRAINT [FK_AttachmentMenuItem] FOREIGN KEY([AttachmentAttachmentId])
REFERENCES [dbo].[Attachments] ([AttachmentId])
GO
ALTER TABLE [dbo].[MenuItems] CHECK CONSTRAINT [FK_AttachmentMenuItem]
GO
ALTER TABLE [dbo].[MenuItems]  WITH CHECK ADD  CONSTRAINT [FK_FinanceMenuItem] FOREIGN KEY([FinanceId], [Finance_sysID])
REFERENCES [dbo].[Finances] ([Id], [sysID])
GO
ALTER TABLE [dbo].[MenuItems] CHECK CONSTRAINT [FK_FinanceMenuItem]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_FinanceMessage] FOREIGN KEY([FinanceId], [Finance_sysID])
REFERENCES [dbo].[Finances] ([Id], [sysID])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_FinanceMessage]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Students] FOREIGN KEY([ToStudents])
REFERENCES [dbo].[Students] ([SysId])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Students]
GO
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD  CONSTRAINT [FK_Messages_Teachers] FOREIGN KEY([ToTeachers])
REFERENCES [dbo].[Teachers] ([SysId])
GO
ALTER TABLE [dbo].[Messages] CHECK CONSTRAINT [FK_Messages_Teachers]
GO
ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [FK_Results_Assesment] FOREIGN KEY([AssessmentID])
REFERENCES [dbo].[Assesments] ([SysId])
GO
ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [FK_Results_Assesment]
GO
ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [FK_Results_Students] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([SysId])
GO
ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [FK_Results_Students]
GO
ALTER TABLE [dbo].[Results]  WITH CHECK ADD  CONSTRAINT [FK_Results_Teachers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Teachers] ([SysId])
GO
ALTER TABLE [dbo].[Results] CHECK CONSTRAINT [FK_Results_Teachers]
GO
ALTER TABLE [dbo].[RoleICT]  WITH CHECK ADD  CONSTRAINT [FK_RoleICT_ICT] FOREIGN KEY([ICTs_Id])
REFERENCES [dbo].[ICTs] ([Id])
GO
ALTER TABLE [dbo].[RoleICT] CHECK CONSTRAINT [FK_RoleICT_ICT]
GO
ALTER TABLE [dbo].[RoleICT]  WITH CHECK ADD  CONSTRAINT [FK_RoleICT_Role] FOREIGN KEY([Roles_SysId])
REFERENCES [dbo].[Roles] ([SysId])
GO
ALTER TABLE [dbo].[RoleICT] CHECK CONSTRAINT [FK_RoleICT_Role]
GO
ALTER TABLE [dbo].[RoleICT1]  WITH CHECK ADD  CONSTRAINT [FK_RoleICT1_ICT] FOREIGN KEY([ICTs1_Id])
REFERENCES [dbo].[ICTs] ([Id])
GO
ALTER TABLE [dbo].[RoleICT1] CHECK CONSTRAINT [FK_RoleICT1_ICT]
GO
ALTER TABLE [dbo].[RoleICT1]  WITH CHECK ADD  CONSTRAINT [FK_RoleICT1_Role] FOREIGN KEY([Roles1_SysId])
REFERENCES [dbo].[Roles] ([SysId])
GO
ALTER TABLE [dbo].[RoleICT1] CHECK CONSTRAINT [FK_RoleICT1_Role]
GO
ALTER TABLE [dbo].[RoleMenus]  WITH CHECK ADD  CONSTRAINT [FK_FinanceRoleMenu] FOREIGN KEY([FinanceId], [Finance_sysID])
REFERENCES [dbo].[Finances] ([Id], [sysID])
GO
ALTER TABLE [dbo].[RoleMenus] CHECK CONSTRAINT [FK_FinanceRoleMenu]
GO
ALTER TABLE [dbo].[RoleMenus]  WITH CHECK ADD  CONSTRAINT [FK_RoleMenu_MenuItems] FOREIGN KEY([MenuId])
REFERENCES [dbo].[MenuItems] ([SysId])
GO
ALTER TABLE [dbo].[RoleMenus] CHECK CONSTRAINT [FK_RoleMenu_MenuItems]
GO
ALTER TABLE [dbo].[RoleMenus]  WITH CHECK ADD  CONSTRAINT [FK_RoleMenu_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([SysId])
GO
ALTER TABLE [dbo].[RoleMenus] CHECK CONSTRAINT [FK_RoleMenu_Role]
GO
ALTER TABLE [dbo].[Roles]  WITH CHECK ADD  CONSTRAINT [FK_AuditorRole] FOREIGN KEY([AuditorId])
REFERENCES [dbo].[Auditors] ([Id])
GO
ALTER TABLE [dbo].[Roles] CHECK CONSTRAINT [FK_AuditorRole]
GO
ALTER TABLE [dbo].[Roles]  WITH CHECK ADD  CONSTRAINT [FK_FinanceRole] FOREIGN KEY([FinanceId], [Finance_sysID])
REFERENCES [dbo].[Finances] ([Id], [sysID])
GO
ALTER TABLE [dbo].[Roles] CHECK CONSTRAINT [FK_FinanceRole]
GO
ALTER TABLE [dbo].[Sections]  WITH CHECK ADD  CONSTRAINT [FK_Sections_Year] FOREIGN KEY([YearId])
REFERENCES [dbo].[Years] ([SysId])
GO
ALTER TABLE [dbo].[Sections] CHECK CONSTRAINT [FK_Sections_Year]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Departments] ([SysId])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Department]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Role] FOREIGN KEY([Role])
REFERENCES [dbo].[Roles] ([SysId])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Role]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Sections] FOREIGN KEY([SectionID])
REFERENCES [dbo].[Sections] ([SysId])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Sections]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Teachers] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[Teachers] ([SysId])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Teachers]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Year] FOREIGN KEY([YearID])
REFERENCES [dbo].[Years] ([SysId])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Year]
GO
ALTER TABLE [dbo].[SubmitAssignments]  WITH CHECK ADD  CONSTRAINT [FK_SubmitAssignment_Assesment] FOREIGN KEY([AssesmentId])
REFERENCES [dbo].[Assesments] ([SysId])
GO
ALTER TABLE [dbo].[SubmitAssignments] CHECK CONSTRAINT [FK_SubmitAssignment_Assesment]
GO
ALTER TABLE [dbo].[SubmitAssignments]  WITH CHECK ADD  CONSTRAINT [FK_SubmitAssignment_Students] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Students] ([SysId])
GO
ALTER TABLE [dbo].[SubmitAssignments] CHECK CONSTRAINT [FK_SubmitAssignment_Students]
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD  CONSTRAINT [FK_AttachmentTeacher] FOREIGN KEY([AttachmentAttachmentId])
REFERENCES [dbo].[Attachments] ([AttachmentId])
GO
ALTER TABLE [dbo].[Teachers] CHECK CONSTRAINT [FK_AttachmentTeacher]
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD  CONSTRAINT [FK_FinanceTeacher] FOREIGN KEY([FinanceId], [Finance_sysID])
REFERENCES [dbo].[Finances] ([Id], [sysID])
GO
ALTER TABLE [dbo].[Teachers] CHECK CONSTRAINT [FK_FinanceTeacher]
GO
ALTER TABLE [dbo].[Teachers]  WITH CHECK ADD  CONSTRAINT [FK_Teachers_Role] FOREIGN KEY([Role])
REFERENCES [dbo].[Roles] ([SysId])
GO
ALTER TABLE [dbo].[Teachers] CHECK CONSTRAINT [FK_Teachers_Role]
GO
ALTER TABLE [dbo].[Teaches]  WITH CHECK ADD  CONSTRAINT [FK_AttachmentTeach] FOREIGN KEY([AttachmentAttachmentId])
REFERENCES [dbo].[Attachments] ([AttachmentId])
GO
ALTER TABLE [dbo].[Teaches] CHECK CONSTRAINT [FK_AttachmentTeach]
GO
ALTER TABLE [dbo].[Teaches]  WITH CHECK ADD  CONSTRAINT [FK_AttachmentTeach1] FOREIGN KEY([AttachmentAttachmentId1])
REFERENCES [dbo].[Attachments] ([AttachmentId])
GO
ALTER TABLE [dbo].[Teaches] CHECK CONSTRAINT [FK_AttachmentTeach1]
GO
ALTER TABLE [dbo].[Teaches]  WITH CHECK ADD  CONSTRAINT [FK_RoleTeach] FOREIGN KEY([RoleSysId])
REFERENCES [dbo].[Roles] ([SysId])
GO
ALTER TABLE [dbo].[Teaches] CHECK CONSTRAINT [FK_RoleTeach]
GO
ALTER TABLE [dbo].[Teaches]  WITH CHECK ADD  CONSTRAINT [FK_Teaches_Course] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([SysId])
GO
ALTER TABLE [dbo].[Teaches] CHECK CONSTRAINT [FK_Teaches_Course]
GO
ALTER TABLE [dbo].[Teaches]  WITH CHECK ADD  CONSTRAINT [FK_Teaches_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([SysId])
GO
ALTER TABLE [dbo].[Teaches] CHECK CONSTRAINT [FK_Teaches_Department]
GO
ALTER TABLE [dbo].[Teaches]  WITH CHECK ADD  CONSTRAINT [FK_Teaches_Sections] FOREIGN KEY([SectionId])
REFERENCES [dbo].[Sections] ([SysId])
GO
ALTER TABLE [dbo].[Teaches] CHECK CONSTRAINT [FK_Teaches_Sections]
GO
ALTER TABLE [dbo].[Teaches]  WITH CHECK ADD  CONSTRAINT [FK_Teaches_Teachers] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teachers] ([SysId])
GO
ALTER TABLE [dbo].[Teaches] CHECK CONSTRAINT [FK_Teaches_Teachers]
GO
ALTER TABLE [dbo].[Teaches]  WITH CHECK ADD  CONSTRAINT [FK_Teaches_Year] FOREIGN KEY([YearId])
REFERENCES [dbo].[Years] ([SysId])
GO
ALTER TABLE [dbo].[Teaches] CHECK CONSTRAINT [FK_Teaches_Year]
GO
ALTER TABLE [dbo].[Years]  WITH CHECK ADD  CONSTRAINT [FK_FinanceYear] FOREIGN KEY([FinanceId], [Finance_sysID])
REFERENCES [dbo].[Finances] ([Id], [sysID])
GO
ALTER TABLE [dbo].[Years] CHECK CONSTRAINT [FK_FinanceYear]
GO
