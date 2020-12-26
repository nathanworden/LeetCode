def merge_ranges(meetings)
  sort_meetings = meetings.sort
  merged_meetings = [sorted_meetings[0]]
  sorted_meetings[1..-1].each do |current_meeting_start, current_meeting_end|
    last_merged_meeting_start, last_merged_meeting_end = merged_meetings[-1]
    if current_meeting_start <= last_merged_meeting_end
      merged_meetings[-1] = [last_merged_meeting_start, [last_merged_meeting_end, current_meeting_end].max]
    else
      merged_meetings << [current_meeting_start, current_meeting_end]
    end
  end
  merged_meetings
end