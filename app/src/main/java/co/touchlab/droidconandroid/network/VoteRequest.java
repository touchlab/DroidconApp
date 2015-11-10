package co.touchlab.droidconandroid.network;

import java.util.List;

import retrofit.client.Response;
import retrofit.http.Field;
import retrofit.http.FormUrlEncoded;
import retrofit.http.GET;
import retrofit.http.POST;
import retrofit.http.Path;

/**
 * Created by kgalligan on 7/20/14.
 */
public interface VoteRequest
{

    //    /api/voter/updateVote/:subId
    @FormUrlEncoded
    @POST("/api/voter/updateVote/{subId}")
    Response updateVote(@Path("subId") Long talkId, @Field("vote") Integer vote);


    @GET("/api/voter/voteSubmissions")
    List<TalkVotingWrapper> getTalkSubmission() throws Exception;
}
