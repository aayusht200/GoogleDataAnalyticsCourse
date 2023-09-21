BEGIN tran t1 
SELECT *
  FROM [master].[dbo].[movie_data] 
  WHERE Genre='Comedy' and Revenue>'3000000'
  ORDER by Release_Date DESC
  ROLLBACK