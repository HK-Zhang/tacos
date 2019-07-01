USE [TacosIdentity]
GO

INSERT INTO [dbo].[AspNetUserClaims]
           ([UserId]
           ,[ClaimType]
           ,[ClaimValue])
     VALUES
           ('e9bfec46-8b93-4902-a3f5-466ce0f9a84a'
           ,'role'
           ,'admin')
GO


INSERT INTO [dbo].[AspNetUserClaims]
           ([UserId]
           ,[ClaimType]
           ,[ClaimValue])
     VALUES
           ('e9bfec46-8b93-4902-a3f5-466ce0f9a84a'
           ,'dnvglid'
           ,'123')
GO

USE [IdentityServer4Quickstart2]
GO

INSERT INTO [dbo].[ApiClaims]
           ([Type]
           ,[ApiResourceId])
     VALUES
           ('role'
           ,1)
GO


INSERT INTO [dbo].[ApiClaims]
           ([Type]
           ,[ApiResourceId])
     VALUES
           ('dnvglid'
           ,1)
GO
