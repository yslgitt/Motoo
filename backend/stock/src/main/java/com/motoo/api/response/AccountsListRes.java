package com.motoo.api.response;


import com.motoo.common.model.response.BaseResponseBody;
import com.motoo.db.entity.Account;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@ApiModel("AccountsListResponse")
public class AccountsListRes extends BaseResponseBody {

    @ApiModelProperty(name = "계좌 리스트")
    List<Account> account;
    @ApiModelProperty(name = "계좌 총 자산")
    int asset;
    @ApiModelProperty(name = "각 계좌 자산")
    List<Integer> pitches;

    public static AccountsListRes of(List<Account> account, List<Integer> pitches, int seeds, Integer statusCode, String message){
        AccountsListRes res = new AccountsListRes();
        res.setPitches(pitches);

        res.setAsset(seeds);
        res.setAccount(account);
        res.setStatusCode(statusCode);
        res.setMessage(message);

        return res;
    }

}
