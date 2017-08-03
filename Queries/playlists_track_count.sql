--playlists_track_count.sql: Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.
select p.Name as "Playlist Name",
			count (pt.TrackId) as "Number of Tracks"
from Playlist p, PlaylistTrack pt
where p.PlaylistId = pt.PlaylistId
group by p.Name
;