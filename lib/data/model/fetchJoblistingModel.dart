// To parse this JSON data, do
//
//     final fetchJobListingModel = fetchJobListingModelFromJson(jsonString);

import 'dart:convert';

FetchJobListingModel fetchJobListingModelFromJson(String str) => FetchJobListingModel.fromJson(json.decode(str));

String fetchJobListingModelToJson(FetchJobListingModel data) => json.encode(data.toJson());

class FetchJobListingModel {
    List<Job> jobs;
    int totalJobs;
    int page;

    FetchJobListingModel({
        required this.jobs,
        required this.totalJobs,
        required this.page,
    });

    factory FetchJobListingModel.fromJson(Map<String, dynamic> json) => FetchJobListingModel(
        jobs: List<Job>.from(json["jobs"].map((x) => Job.fromJson(x))),
        totalJobs: json["total_jobs"],
        page: json["page"],
    );

    Map<String, dynamic> toJson() => {
        "jobs": List<dynamic>.from(jobs.map((x) => x.toJson())),
        "total_jobs": totalJobs,
        "page": page,
    };
}

class Job {
    int jobId;
    String title;
    String company;
    String location;
    String jobType;
    dynamic minExperience;
    dynamic maxExperience;
    dynamic salaryMin;
    dynamic salaryMax;
    DateTime postedDate;

    Job({
        required this.jobId,
        required this.title,
        required this.company,
        required this.location,
        required this.jobType,
        required this.minExperience,
        required this.maxExperience,
        required this.salaryMin,
        required this.salaryMax,
        required this.postedDate,
    });

    factory Job.fromJson(Map<String, dynamic> json) => Job(
        jobId: json["job_id"],
        title: json["title"],
        company: json["company"],
        location: json["location"],
        jobType: json["job_type"],
        minExperience: json["min_experience"],
        maxExperience: json["max_experience"],
        salaryMin: json["salary_min"],
        salaryMax: json["salary_max"],
        postedDate: DateTime.parse(json["posted_date"]),
    );

    Map<String, dynamic> toJson() => {
        "job_id": jobId,
        "title": title,
        "company": company,
        "location": location,
        "job_type": jobType,
        "min_experience": minExperience,
        "max_experience": maxExperience,
        "salary_min": salaryMin,
        "salary_max": salaryMax,
        "posted_date": "${postedDate.year.toString().padLeft(4, '0')}-${postedDate.month.toString().padLeft(2, '0')}-${postedDate.day.toString().padLeft(2, '0')}",
    };
}
