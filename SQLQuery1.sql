SELECT TOP 200000 *
FROM dbo.marketing_campaign_dataset
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'marketing_campaign_dataset';
SELECT COUNT(*) AS TotalRows
FROM marketing_campaign_dataset;
SELECT Campaign_ID, ROI
FROM marketing_campaign_dataset
ORDER BY ROI DESC;
SELECT TOP 10
	Campaign_ID,
	Company,
	ROI,
	Acquisition_Cost,
	Conversion_Rate,
	Clicks,
	Impressions
FROM marketing_campaign_dataset
ORDER BY ROI DESC;
SELECT
	Company,
	AVG(Acquisition_Cost) AS Avg_Acquisition_Cost,
	AVG(ROI) AS Avg_ROI
FROM marketing_campaign_dataset
GROUP BY Company
ORDER BY Avg_Acquisition_Cost;
SELECT
	Channel_Used,
	AVG(ROI) AS Avg_ROI,
	AVG(Engagement_Score) AS Avg_Engagement,
	AVG(Clicks) AS Avg_Clicks,
	AVG(Impressions) AS Avg_Impressions
FROM marketing_campaign_dataset
GROUP BY Channel_Used
ORDER BY Avg_ROI DESC;
SELECT
	Target_Audience,
	AVG(DATEDIFF(SECOND, '00:00:00', Conversion_Rate) / 60.0) AS Avg_Conversion_Rate_Minutes,
	AVG(ROI) AS Avg_ROI
FROM marketing_campaign_dataset
GROUP BY Target_Audience
ORDER BY Avg_Conversion_Rate_Minutes DESC;
SELECT
	Customer_Segment,
	AVG(Engagement_Score) AS Avg_Engagement,
	AVG(Clicks) AS Avg_Clicks,
	AVG(Impressions) AS Avg_Impressions
FROM marketing_campaign_dataset
GROUP BY Customer_Segment
ORDER BY Avg_Engagement DESC;
SELECT
	Date,
	AVG(ROI) AS Avg_ROI,
	SUM(Clicks) AS Total_Clicks,
	SUM(Impressions) AS Total_Impressions
FROM marketing_campaign_dataset
GROUP BY Date
ORDER BY Date;
SELECT
	Location,
	AVG(ROI) AS Avg_ROI,
	AVG(Engagement_Score) AS Avg_Engagement,
	SUM(Clicks) AS Total_Clicks
FROM marketing_campaign_dataset
GROUP BY Location
ORDER BY Avg_ROI;
SELECT
	Campaign_Type,
	AVG(ROI) AS Avg_ROI,
	AVG(DATEDIFF(SECOND, 0, Conversion_Rate) * 1.0) AS Avg_Conversion,
	AVG(Engagement_Score) AS Avg_Engagement
FROM marketing_campaign_dataset
GROUP BY Campaign_Type
ORDER BY Avg_ROI DESC;