USE [ecart]
GO
/****** Object:  Table [dbo].[address]    Script Date: 03-03-2022 10:37:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[address](
	[add_id] [int] IDENTITY(1,1) NOT NULL,
	[landmark] [nchar](10) NULL,
	[street_name] [nchar](10) NULL,
	[pincode] [int] NULL,
	[user_id] [int] NULL,
	[city] [nchar](20) NULL,
	[address_type_id] [int] NULL,
 CONSTRAINT [PK_address] PRIMARY KEY CLUSTERED 
(
	[add_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[address_type]    Script Date: 28-02-2022 10:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[address_type](
	[address_type_id] [int] IDENTITY(1,1) NOT NULL,
	[address_type] [nchar](10) NULL,
 CONSTRAINT [PK_address_type] PRIMARY KEY CLUSTERED 
(
	[address_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart_table]    Script Date: 28-02-2022 10:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart_table](
	[cart_id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NULL,
	[product_id] [int] NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_cart_table] PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gender]    Script Date: 28-02-2022 10:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gender](
	[gender_id] [int] IDENTITY(1,1) NOT NULL,
	[gender_name] [nchar](10) NULL,
 CONSTRAINT [PK_gender] PRIMARY KEY CLUSTERED 
(
	[gender_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mobile_table]    Script Date: 28-02-2022 10:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mobile_table](
	[phone_id] [int] IDENTITY(1,1) NOT NULL,
	[phone_no] [bigint] NOT NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_mobile_table] PRIMARY KEY CLUSTERED 
(
	[phone_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_status]    Script Date: 28-02-2022 10:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_status](
	[order_status_id] [int] IDENTITY(1,1) NOT NULL,
	[status_code] [nchar](10) NULL,
 CONSTRAINT [PK_order_status] PRIMARY KEY CLUSTERED 
(
	[order_status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_tab]    Script Date: 28-02-2022 10:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_tab](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[order_no] [int] NULL,
	[quantity] [int] NULL,
	[order_date] [date] NULL,
	[order_status_id] [int] NULL,
	[payment_mode_id] [int] NULL,
	[user_id] [int] NULL,
	[product_id] [int] NULL,
 CONSTRAINT [PK_order_tab] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[paymentmode]    Script Date: 28-02-2022 10:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[paymentmode](
	[pay_mode_id] [int] IDENTITY(1,1) NOT NULL,
	[payment_mode_type] [nchar](20) NULL,
 CONSTRAINT [PK_paymentmode] PRIMARY KEY CLUSTERED 
(
	[pay_mode_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 28-02-2022 10:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [nchar](20) NULL,
	[product_img] [nchar](20) NULL,
	[description] [nchar](30) NULL,
	[is_active] [int] NULL,
	[product_code] [nchar](10) NULL,
	[price] [float] NULL,
	[pro_cat_id] [int] NULL,
	[available_quantity] [int] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_category]    Script Date: 28-02-2022 10:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_category](
	[prod_cat_id] [int] NOT NULL,
	[category_name] [nchar](20) NULL,
 CONSTRAINT [PK_product_category] PRIMARY KEY CLUSTERED 
(
	[prod_cat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_rating]    Script Date: 28-02-2022 10:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_rating](
	[pro_rating_id] [int] IDENTITY(1,1) NOT NULL,
	[pro_star] [int] NULL,
	[user_id] [int] NULL,
	[product_id] [int] NULL,
 CONSTRAINT [PK_product_rating] PRIMARY KEY CLUSTERED 
(
	[pro_rating_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roletable]    Script Date: 28-02-2022 10:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roletable](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nchar](10) NULL,
 CONSTRAINT [PK_roletable] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 28-02-2022 10:37:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](20) NULL,
	[email] [nchar](20) NULL,
	[password] [nchar](50) NULL,
	[gender_id] [int] NULL,
	[role_id] [int] NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[address] ON 

INSERT [dbo].[address] ([add_id], [landmark], [street_name], [pincode], [user_id], [city], [address_type_id]) VALUES (1, N'mchotel   ', N'mainraod  ', 425405, 1, N'pune                ', 1)
INSERT [dbo].[address] ([add_id], [landmark], [street_name], [pincode], [user_id], [city], [address_type_id]) VALUES (4, N'dmart     ', N'sainagar  ', 425406, 2, N'mumbai              ', 2)
INSERT [dbo].[address] ([add_id], [landmark], [street_name], [pincode], [user_id], [city], [address_type_id]) VALUES (5, N'bank      ', N'nationroad', 411001, 3, N'nashik              ', 3)
INSERT [dbo].[address] ([add_id], [landmark], [street_name], [pincode], [user_id], [city], [address_type_id]) VALUES (6, N'fcjunction', N'fcroad    ', 411001, 4, N'pune                ', 2)
INSERT [dbo].[address] ([add_id], [landmark], [street_name], [pincode], [user_id], [city], [address_type_id]) VALUES (7, N'dmart     ', N'mainroad  ', 425405, 5, N'nagpur              ', 1)
SET IDENTITY_INSERT [dbo].[address] OFF
GO
SET IDENTITY_INSERT [dbo].[address_type] ON 

INSERT [dbo].[address_type] ([address_type_id], [address_type]) VALUES (1, N'home      ')
INSERT [dbo].[address_type] ([address_type_id], [address_type]) VALUES (2, N'office    ')
INSERT [dbo].[address_type] ([address_type_id], [address_type]) VALUES (3, N'business  ')
SET IDENTITY_INSERT [dbo].[address_type] OFF
GO
SET IDENTITY_INSERT [dbo].[cart_table] ON 

INSERT [dbo].[cart_table] ([cart_id], [quantity], [product_id], [user_id]) VALUES (1, 1, 3, 2)
INSERT [dbo].[cart_table] ([cart_id], [quantity], [product_id], [user_id]) VALUES (2, 2, 2, 2)
INSERT [dbo].[cart_table] ([cart_id], [quantity], [product_id], [user_id]) VALUES (3, 3, 2, 1)
INSERT [dbo].[cart_table] ([cart_id], [quantity], [product_id], [user_id]) VALUES (4, 4, 1, 3)
INSERT [dbo].[cart_table] ([cart_id], [quantity], [product_id], [user_id]) VALUES (5, 5, 4, 4)
SET IDENTITY_INSERT [dbo].[cart_table] OFF
GO
SET IDENTITY_INSERT [dbo].[gender] ON 

INSERT [dbo].[gender] ([gender_id], [gender_name]) VALUES (1, N'male      ')
INSERT [dbo].[gender] ([gender_id], [gender_name]) VALUES (2, N'female    ')
SET IDENTITY_INSERT [dbo].[gender] OFF
GO
SET IDENTITY_INSERT [dbo].[mobile_table] ON 

INSERT [dbo].[mobile_table] ([phone_id], [phone_no], [user_id]) VALUES (1, 8978675, 1)
INSERT [dbo].[mobile_table] ([phone_id], [phone_no], [user_id]) VALUES (2, 7654455, 4)
INSERT [dbo].[mobile_table] ([phone_id], [phone_no], [user_id]) VALUES (3, 5322234, 2)
INSERT [dbo].[mobile_table] ([phone_id], [phone_no], [user_id]) VALUES (4, 456554, 3)
INSERT [dbo].[mobile_table] ([phone_id], [phone_no], [user_id]) VALUES (5, 654333, 2)
INSERT [dbo].[mobile_table] ([phone_id], [phone_no], [user_id]) VALUES (6, 7897, 5)
SET IDENTITY_INSERT [dbo].[mobile_table] OFF
GO
SET IDENTITY_INSERT [dbo].[order_status] ON 

INSERT [dbo].[order_status] ([order_status_id], [status_code]) VALUES (1, N'shipped   ')
INSERT [dbo].[order_status] ([order_status_id], [status_code]) VALUES (2, N'packed    ')
INSERT [dbo].[order_status] ([order_status_id], [status_code]) VALUES (3, N'in-transit')
INSERT [dbo].[order_status] ([order_status_id], [status_code]) VALUES (4, N'delievered')
INSERT [dbo].[order_status] ([order_status_id], [status_code]) VALUES (5, N'cancel    ')
INSERT [dbo].[order_status] ([order_status_id], [status_code]) VALUES (6, N'return    ')
SET IDENTITY_INSERT [dbo].[order_status] OFF
GO
SET IDENTITY_INSERT [dbo].[order_tab] ON 

INSERT [dbo].[order_tab] ([order_id], [order_no], [quantity], [order_date], [order_status_id], [payment_mode_id], [user_id], [product_id]) VALUES (1, 1, 1, CAST(N'2022-02-24' AS Date), 1, 1, 1, 1)
INSERT [dbo].[order_tab] ([order_id], [order_no], [quantity], [order_date], [order_status_id], [payment_mode_id], [user_id], [product_id]) VALUES (2, 2, 4, CAST(N'2022-02-15' AS Date), 3, 1, 2, 1)
INSERT [dbo].[order_tab] ([order_id], [order_no], [quantity], [order_date], [order_status_id], [payment_mode_id], [user_id], [product_id]) VALUES (3, 3, 3, CAST(N'2022-02-17' AS Date), 2, 2, 2, 2)
INSERT [dbo].[order_tab] ([order_id], [order_no], [quantity], [order_date], [order_status_id], [payment_mode_id], [user_id], [product_id]) VALUES (4, 4, 4, CAST(N'2022-02-14' AS Date), 4, 3, 3, 3)
INSERT [dbo].[order_tab] ([order_id], [order_no], [quantity], [order_date], [order_status_id], [payment_mode_id], [user_id], [product_id]) VALUES (5, 5, 2, CAST(N'2022-02-19' AS Date), 3, 4, 4, 2)
SET IDENTITY_INSERT [dbo].[order_tab] OFF
GO
SET IDENTITY_INSERT [dbo].[paymentmode] ON 

INSERT [dbo].[paymentmode] ([pay_mode_id], [payment_mode_type]) VALUES (1, N'cod                 ')
INSERT [dbo].[paymentmode] ([pay_mode_id], [payment_mode_type]) VALUES (2, N'credit card         ')
INSERT [dbo].[paymentmode] ([pay_mode_id], [payment_mode_type]) VALUES (3, N'debit card          ')
INSERT [dbo].[paymentmode] ([pay_mode_id], [payment_mode_type]) VALUES (4, N'upi                 ')
INSERT [dbo].[paymentmode] ([pay_mode_id], [payment_mode_type]) VALUES (5, N'online banking      ')
SET IDENTITY_INSERT [dbo].[paymentmode] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([product_id], [product_name], [product_img], [description], [is_active], [product_code], [price], [pro_cat_id], [available_quantity]) VALUES (1, N'samsung             ', N'samsung.jpg         ', N'brand product                 ', 1, N'sm_101    ', 10000, 1, 1)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [description], [is_active], [product_code], [price], [pro_cat_id], [available_quantity]) VALUES (2, N'mi                  ', N'mi.png              ', N'world best                    ', 0, N'mi_102    ', 20000, 2, 5)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [description], [is_active], [product_code], [price], [pro_cat_id], [available_quantity]) VALUES (3, N'oneplus             ', N'one.jpg             ', N'no.1 product                  ', 1, N'one_103   ', 30000, 2, 6)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [description], [is_active], [product_code], [price], [pro_cat_id], [available_quantity]) VALUES (4, N'realme              ', N'realme.png          ', N'smartphone                    ', 1, N'realme_104', 20000, 3, 10)
INSERT [dbo].[product] ([product_id], [product_name], [product_img], [description], [is_active], [product_code], [price], [pro_cat_id], [available_quantity]) VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
INSERT [dbo].[product_category] ([prod_cat_id], [category_name]) VALUES (1, N'mobile_cat          ')
INSERT [dbo].[product_category] ([prod_cat_id], [category_name]) VALUES (2, N'tv_cat              ')
INSERT [dbo].[product_category] ([prod_cat_id], [category_name]) VALUES (3, N'laptop_cat          ')
INSERT [dbo].[product_category] ([prod_cat_id], [category_name]) VALUES (4, N'earbud_cat          ')
INSERT [dbo].[product_category] ([prod_cat_id], [category_name]) VALUES (5, N'pendrive_cat        ')
GO
SET IDENTITY_INSERT [dbo].[product_rating] ON 

INSERT [dbo].[product_rating] ([pro_rating_id], [pro_star], [user_id], [product_id]) VALUES (1, 4, 1, 1)
INSERT [dbo].[product_rating] ([pro_rating_id], [pro_star], [user_id], [product_id]) VALUES (2, 3, 2, 2)
INSERT [dbo].[product_rating] ([pro_rating_id], [pro_star], [user_id], [product_id]) VALUES (3, 5, 3, 3)
INSERT [dbo].[product_rating] ([pro_rating_id], [pro_star], [user_id], [product_id]) VALUES (4, 4, 4, 4)
INSERT [dbo].[product_rating] ([pro_rating_id], [pro_star], [user_id], [product_id]) VALUES (6, 5, 5, 4)
SET IDENTITY_INSERT [dbo].[product_rating] OFF
GO
SET IDENTITY_INSERT [dbo].[roletable] ON 

INSERT [dbo].[roletable] ([role_id], [role_name]) VALUES (1, N'admin     ')
INSERT [dbo].[roletable] ([role_id], [role_name]) VALUES (2, N'customer  ')
SET IDENTITY_INSERT [dbo].[roletable] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([user_id], [name], [email], [password], [gender_id], [role_id]) VALUES (1, N'vaishali            ', N'vaishali@bbd        ', N'123                                               ', 2, 2)
INSERT [dbo].[user] ([user_id], [name], [email], [password], [gender_id], [role_id]) VALUES (2, N'pritesh             ', N'pritesh@bbd         ', N'234                                               ', 1, 2)
INSERT [dbo].[user] ([user_id], [name], [email], [password], [gender_id], [role_id]) VALUES (3, N'apurva              ', N'apurva@bbd          ', N'654                                               ', 2, 2)
INSERT [dbo].[user] ([user_id], [name], [email], [password], [gender_id], [role_id]) VALUES (4, N'tejashree           ', N'tejashree@bbd       ', N'567                                               ', 2, 2)
INSERT [dbo].[user] ([user_id], [name], [email], [password], [gender_id], [role_id]) VALUES (5, N'prince              ', N'prince@bbd          ', N'123                                               ', 1, 2)
SET IDENTITY_INSERT [dbo].[user] OFF
GO
ALTER TABLE [dbo].[address]  WITH CHECK ADD  CONSTRAINT [FK_address_address_type] FOREIGN KEY([address_type_id])
REFERENCES [dbo].[address_type] ([address_type_id])
GO
ALTER TABLE [dbo].[address] CHECK CONSTRAINT [FK_address_address_type]
GO
ALTER TABLE [dbo].[address]  WITH CHECK ADD  CONSTRAINT [FK_address_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[address] CHECK CONSTRAINT [FK_address_user]
GO
ALTER TABLE [dbo].[cart_table]  WITH CHECK ADD  CONSTRAINT [FK_cart_table_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[cart_table] CHECK CONSTRAINT [FK_cart_table_product]
GO
ALTER TABLE [dbo].[cart_table]  WITH CHECK ADD  CONSTRAINT [FK_cart_table_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[cart_table] CHECK CONSTRAINT [FK_cart_table_user]
GO
ALTER TABLE [dbo].[mobile_table]  WITH CHECK ADD  CONSTRAINT [FK_mobile_table_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[mobile_table] CHECK CONSTRAINT [FK_mobile_table_user]
GO
ALTER TABLE [dbo].[order_tab]  WITH CHECK ADD  CONSTRAINT [FK_order_tab_order_status] FOREIGN KEY([order_status_id])
REFERENCES [dbo].[order_status] ([order_status_id])
GO
ALTER TABLE [dbo].[order_tab] CHECK CONSTRAINT [FK_order_tab_order_status]
GO
ALTER TABLE [dbo].[order_tab]  WITH CHECK ADD  CONSTRAINT [FK_order_tab_paymentmode] FOREIGN KEY([payment_mode_id])
REFERENCES [dbo].[paymentmode] ([pay_mode_id])
GO
ALTER TABLE [dbo].[order_tab] CHECK CONSTRAINT [FK_order_tab_paymentmode]
GO
ALTER TABLE [dbo].[order_tab]  WITH CHECK ADD  CONSTRAINT [FK_order_tab_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[order_tab] CHECK CONSTRAINT [FK_order_tab_product]
GO
ALTER TABLE [dbo].[order_tab]  WITH CHECK ADD  CONSTRAINT [FK_order_tab_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[order_tab] CHECK CONSTRAINT [FK_order_tab_user]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_product_category] FOREIGN KEY([pro_cat_id])
REFERENCES [dbo].[product_category] ([prod_cat_id])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_product_category]
GO
ALTER TABLE [dbo].[product_rating]  WITH CHECK ADD  CONSTRAINT [FK_product_rating_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
GO
ALTER TABLE [dbo].[product_rating] CHECK CONSTRAINT [FK_product_rating_product]
GO
ALTER TABLE [dbo].[product_rating]  WITH CHECK ADD  CONSTRAINT [FK_product_rating_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[product_rating] CHECK CONSTRAINT [FK_product_rating_user]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_gender] FOREIGN KEY([gender_id])
REFERENCES [dbo].[gender] ([gender_id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_gender]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_roletable] FOREIGN KEY([role_id])
REFERENCES [dbo].[roletable] ([role_id])
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_roletable]
GO


**stored procedured->>
Stored procedure to find a user by its pincode.

CREATE PROCEDURE [dbo].[getUserByPincode] @PostalCode int
AS
DECLARE @user_id int


select @user_id=user_id from address_tab WHERE pincode = @PostalCode;
SELECT user_id,name,email,gender_name,role_name FROM [ecart].[dbo].[user_tab]
inner join gender_tab on user_tab.gender_id=gender_tab.gender_id
inner join role_tab on user_tab.role_id=role_tab.role_id
WHERE user_id = @user_id


exec getUserByPincode 425484;


**User defined function->>
Function to find order details between two dates.

create function [dbo].[OrderOnDate](@StartDate date,@EndDate date)
returns table
as
return select u.name,p.product_name,o.order_date from order_tab as o inner join product_tab as p on o.product_id=p.product_id inner join
[ecart].[dbo].[user_tab] as u on u.user_id=o.user_id
where order_date between @StartDate and @EndDate;


â€‹
Select * from OrderOnDate('2022-02-14','2022-02-24');â€‹


**view->>
View for selective info of user.

CREATE view [dbo].[userinfoview] as select c.user_id, c.name,c.email,ad.pincode,ad.city from user_tab as c,address_tab as ad where c.user_id=ad.user_id;â€‹

Select * from userinfoview;â€‹




