-- ================================================
-- Template generated from Template Explorer using:
-- Create Trigger (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- See additional Create Trigger templates for more
-- examples of different Trigger statements.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER dbo.Change_Average_Mark
   ON  dbo.film_profile_mark
   AFTER INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for trigger here

	--UPDATE film SET average_mark
	
	DECLARE @average_value INT;
	SET @average_value =
	(	SELECT AVG(value) 
		FROM film_profile_mark 
		JOIN mark 
		ON film_profile_mark.mark_id = mark.id 
	)

	--UPDATE film SET average_mark = SUM(value)/COUNT(value) 
	--FROM film_profile_mark 
	--JOIN mark 
	--ON film_profile_mark.mark_id = mark.id 
	--WHERE film.id = film_profile_mark.film_id;
	DECLARE @insert_id INT
	SET @insert_id =
	(
		SELECT TOP(1) film_id FROM inserted
	)

	UPDATE film SET average_mark = @average_value
	WHERE film.id = @insert_id;
END
GO
